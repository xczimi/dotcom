#!/usr/bin/env python3
"""
Google Takeout Blogger to Static HTML Converter

Converts a Google Takeout Blogger export to static HTML files for hosting as part of xczimi.com.

Usage:
    python3 blogger-convert.py <takeout_blogger_dir> <output_dir>

Example:
    python3 blogger-convert.py Takeout/Blogger public/blog/

Requirements:
    - Python 3.6+ (uses only standard library)
"""

import xml.etree.ElementTree as ET
import os
import re
import sys
import html
import shutil
import hashlib
import urllib.request
import urllib.error
import ssl
from datetime import datetime
from collections import defaultdict
from pathlib import Path
from urllib.parse import urlparse, unquote

# Blogger Atom namespaces (Takeout format)
NAMESPACES = {
    'atom': 'http://www.w3.org/2005/Atom',
    'blogger': 'http://schemas.google.com/blogger/2018',
}


class Post:
    """Represents a blog post."""
    def __init__(self):
        self.id = ''
        self.title = ''
        self.content = ''
        self.published = None
        self.updated = None
        self.slug = ''
        self.labels = []
        self.comments = []
        self.lang = 'hu'  # Default to Hungarian
        self.original_url = ''


class Comment:
    """Represents a comment on a post."""
    def __init__(self):
        self.author = ''
        self.author_url = ''
        self.content = ''
        self.published = None


class TakeoutConverter:
    """Main converter class for Google Takeout Blogger exports."""

    def __init__(self, takeout_dir, output_dir, blog_name="Czimi. Vancouver. Blog."):
        self.takeout_dir = Path(takeout_dir)
        self.output_dir = Path(output_dir)
        self.blog_name = blog_name
        self.posts = []
        self.comments_by_post = defaultdict(list)
        self.labels = defaultdict(list)
        self.posts_by_year = defaultdict(lambda: defaultdict(list))
        self.images_copied = 0
        self.images_downloaded = 0
        self.failed_downloads = []
        self.image_cache = {}  # URL -> local path mapping
        self.original_urls = {}  # thumbnail URL -> original URL mapping

    def parse_feed(self):
        """Parse the Blogger Atom feed from Takeout."""
        feed_path = self.takeout_dir / 'Blogs' / self.blog_name / 'feed.atom'

        if not feed_path.exists():
            # Try to find any blog folder
            blogs_dir = self.takeout_dir / 'Blogs'
            if blogs_dir.exists():
                for blog_folder in blogs_dir.iterdir():
                    if blog_folder.is_dir() and (blog_folder / 'feed.atom').exists():
                        feed_path = blog_folder / 'feed.atom'
                        self.blog_name = blog_folder.name
                        break

        print(f"Parsing {feed_path}...")

        # Parse with namespace handling
        tree = ET.parse(feed_path)
        root = tree.getroot()

        # Register namespaces for proper parsing
        for prefix, uri in NAMESPACES.items():
            ET.register_namespace(prefix, uri)

        # Find all entries (using default namespace)
        # Takeout uses default namespace, so we need to handle it differently
        ns = {'': 'http://www.w3.org/2005/Atom', 'blogger': 'http://schemas.google.com/blogger/2018'}

        entries = root.findall('{http://www.w3.org/2005/Atom}entry')

        print(f"Found {len(entries)} entries to process...")

        for entry in entries:
            self._process_entry(entry)

        # Attach comments to posts
        for post in self.posts:
            post.comments = sorted(
                self.comments_by_post.get(post.id, []),
                key=lambda c: c.published or datetime.min
            )

        # Sort posts by date (newest first)
        self.posts.sort(key=lambda p: p.published or datetime.min, reverse=True)

        # Organize by year/month
        for post in self.posts:
            if post.published:
                year = post.published.year
                month = post.published.month
                self.posts_by_year[year][month].append(post)

        print(f"Found {len(self.posts)} posts and {sum(len(c) for c in self.comments_by_post.values())} comments")

    def _process_entry(self, entry):
        """Process a single entry (post or comment)."""
        # Get entry type from blogger:type element
        type_elem = entry.find('{http://schemas.google.com/blogger/2018}type')
        if type_elem is None:
            return

        entry_type = type_elem.text

        # Get status to filter spam
        status_elem = entry.find('{http://schemas.google.com/blogger/2018}status')
        status = status_elem.text if status_elem is not None else ''

        # Skip spam comments
        if status == 'SPAM_COMMENT':
            return

        # Skip non-LIVE posts (drafts, etc.)
        if entry_type == 'POST' and status != 'LIVE':
            return

        if entry_type == 'POST':
            self._process_post(entry)
        elif entry_type == 'COMMENT' and status == 'LIVE':
            self._process_comment(entry)

    def _process_post(self, entry):
        """Process a blog post entry."""
        post = Post()

        # ID
        id_elem = entry.find('{http://www.w3.org/2005/Atom}id')
        if id_elem is not None:
            post.id = id_elem.text or ''

        # Title
        title_elem = entry.find('{http://www.w3.org/2005/Atom}title')
        if title_elem is not None:
            post.title = title_elem.text or 'Untitled'

        # Content
        content_elem = entry.find('{http://www.w3.org/2005/Atom}content')
        if content_elem is not None:
            post.content = content_elem.text or ''

        # Skip posts with no content
        if not post.content.strip():
            return

        # Published date
        published_elem = entry.find('{http://www.w3.org/2005/Atom}published')
        if published_elem is not None and published_elem.text:
            post.published = self._parse_date(published_elem.text)

        # Updated date
        updated_elem = entry.find('{http://www.w3.org/2005/Atom}updated')
        if updated_elem is not None and updated_elem.text:
            post.updated = self._parse_date(updated_elem.text)

        # Get slug from blogger:filename (e.g., /2007/03/laksvadszat.html)
        filename_elem = entry.find('{http://schemas.google.com/blogger/2018}filename')
        if filename_elem is not None and filename_elem.text:
            match = re.search(r'/([^/]+)\.html$', filename_elem.text)
            if match:
                post.slug = match.group(1)
            # Build original URL
            post.original_url = f"https://blog.xczimi.com{filename_elem.text}"

        # Generate slug if not found
        if not post.slug:
            post.slug = self._generate_slug(post.title)

        # Labels from category elements
        for cat in entry.findall('{http://www.w3.org/2005/Atom}category'):
            scheme = cat.get('scheme', '')
            term = cat.get('term', '')
            # Takeout uses blog-specific scheme for labels
            if 'blog-' in scheme and term:
                post.labels.append(term)
                self.labels[term].append(post)

        # Determine language
        if 'english' in [l.lower() for l in post.labels]:
            post.lang = 'en'

        self.posts.append(post)

    def _process_comment(self, entry):
        """Process a comment entry."""
        comment = Comment()

        # Find which post this comment belongs to via blogger:parent
        parent_elem = entry.find('{http://schemas.google.com/blogger/2018}parent')
        if parent_elem is None:
            return

        post_id = parent_elem.text
        if not post_id:
            return

        # Author
        author_elem = entry.find('{http://www.w3.org/2005/Atom}author')
        if author_elem is not None:
            name_elem = author_elem.find('{http://www.w3.org/2005/Atom}name')
            if name_elem is not None and name_elem.text:
                comment.author = name_elem.text
            else:
                comment.author = 'Anonymous'

            # Author type check
            author_type = author_elem.find('{http://schemas.google.com/blogger/2018}type')
            if author_type is not None and author_type.text == 'ANONYMOUS':
                if not comment.author or not comment.author.strip():
                    comment.author = 'Anonymous'

        # Content
        content_elem = entry.find('{http://www.w3.org/2005/Atom}content')
        if content_elem is not None:
            comment.content = content_elem.text or ''

        # Published date
        published_elem = entry.find('{http://www.w3.org/2005/Atom}published')
        if published_elem is not None and published_elem.text:
            comment.published = self._parse_date(published_elem.text)

        self.comments_by_post[post_id].append(comment)

    def _parse_date(self, date_str):
        """Parse a Blogger date string."""
        # Format: 2007-05-15T10:30:00.000-07:00 or 2007-05-15T10:30:00Z
        try:
            # Remove milliseconds and timezone for simpler parsing
            date_str = re.sub(r'\.\d+', '', date_str)
            date_str = re.sub(r'[+-]\d{2}:\d{2}$', '', date_str)
            date_str = date_str.rstrip('Z')
            return datetime.strptime(date_str, '%Y-%m-%dT%H:%M:%S')
        except ValueError:
            return None

    def _generate_slug(self, title):
        """Generate a URL-safe slug from title."""
        slug = title.lower()
        # Remove accents
        replacements = {
            'á': 'a', 'é': 'e', 'í': 'i', 'ó': 'o', 'ö': 'o', 'ő': 'o',
            'ú': 'u', 'ü': 'u', 'ű': 'u', 'ñ': 'n',
        }
        for accent, plain in replacements.items():
            slug = slug.replace(accent, plain)
        slug = re.sub(r'[^a-z0-9]+', '-', slug)
        slug = slug.strip('-')
        return slug[:50] or 'post'

    def copy_images(self):
        """Copy images from Takeout Albums to output directory."""
        print("Copying images from Takeout...")

        albums_dir = self.takeout_dir / 'Albums' / 'Blogger Pictures'
        if not albums_dir.exists():
            # Try alternative locations
            for alt in ['Albums', 'Blogger Pictures']:
                alt_dir = self.takeout_dir / alt
                if alt_dir.exists():
                    albums_dir = alt_dir
                    break

        if not albums_dir.exists():
            print(f"  Warning: No Albums directory found at {albums_dir}")
            return

        images_out = self.output_dir / 'images'
        images_out.mkdir(parents=True, exist_ok=True)

        # Copy all image files
        for img_file in albums_dir.iterdir():
            if img_file.is_file() and img_file.suffix.lower() in ['.jpg', '.jpeg', '.png', '.gif', '.webp']:
                dest = images_out / img_file.name
                if not dest.exists():
                    shutil.copy2(img_file, dest)
                    self.images_copied += 1

        # Also copy videos from blog folder
        blog_dir = self.takeout_dir / 'Blogs' / self.blog_name
        if blog_dir.exists():
            for vid_file in blog_dir.iterdir():
                if vid_file.is_file() and vid_file.suffix.lower() in ['.mp4', '.webm', '.mov']:
                    dest = images_out / vid_file.name
                    if not dest.exists():
                        shutil.copy2(vid_file, dest)
                        self.images_copied += 1

        print(f"  Copied {self.images_copied} media files")

    def process_post_images(self):
        """Collect image URLs and rewrite them to local paths."""
        print("Processing image URLs...")

        # Ensure images directory exists
        images_dir = self.output_dir / 'images'
        images_dir.mkdir(parents=True, exist_ok=True)

        # Collect all URLs and rewrite content
        for post in self.posts:
            post.content = self._rewrite_image_urls(post.content)

        # Generate download script
        self._generate_download_script()

        print(f"  Found {len(self.image_cache)} unique image URLs")

    def _rewrite_image_urls(self, content):
        """Find image URLs and rewrite them to local paths.

        Also extracts original image URLs from <a href="..."><img src="..."> patterns
        and rewrites both src and href to local paths.
        """
        # First pass: find all <a href="image"><img src="thumbnail"> patterns
        # and collect the original URLs
        link_img_pattern = r'<a[^>]+href=["\']([^"\']+\.(jpg|jpeg|png|gif)[^"\']*)["\'][^>]*>\s*<img[^>]+src=["\']([^"\']+)["\']'
        for match in re.finditer(link_img_pattern, content, re.IGNORECASE):
            href_url = match.group(1)
            img_src = match.group(3)
            # Store the href as the original for this thumbnail
            if img_src.startswith('http') and href_url.startswith('http'):
                if img_src != href_url:  # Only if they're different
                    self.original_urls[img_src] = href_url

        # Second pass: rewrite all image src attributes
        img_pattern = r'src=["\']([^"\']+)["\']'

        def replace_image(match):
            url = match.group(1)

            # Skip non-http URLs, data URLs, and already-local URLs
            if not url.startswith('http'):
                return match.group(0)
            if url.startswith('/blog/'):
                return match.group(0)

            # Skip YouTube embeds and Google Maps
            if 'youtube.com' in url or 'maps.google' in url:
                return match.group(0)

            # Check cache first
            if url in self.image_cache:
                return f'src="{self.image_cache[url]}"'

            # Generate local path for this URL
            local_path = self._get_local_path(url)
            self.image_cache[url] = local_path

            # If no href-based original found, try pattern matching as fallback
            if url not in self.original_urls:
                guessed_original = self._get_original_url(url)
                if guessed_original:
                    self.original_urls[url] = guessed_original

            return f'src="{local_path}"'

        content = re.sub(img_pattern, replace_image, content)

        # Third pass: rewrite href attributes that point to original images
        def replace_href(match):
            href_url = match.group(1)

            # Skip non-http URLs and already-local URLs
            if not href_url.startswith('http'):
                return match.group(0)
            if href_url.startswith('/blog/'):
                return match.group(0)

            # Check if this href is an original for any thumbnail we know about
            for thumb_url, orig_url in self.original_urls.items():
                if orig_url == href_url:
                    local_orig_path = self._get_local_path(thumb_url, is_original=True)
                    return f'href="{local_orig_path}"'

            # Also check if this href URL is directly in our image cache
            if href_url in self.image_cache:
                return f'href="{self.image_cache[href_url]}"'

            return match.group(0)

        href_pattern = r'href=["\']([^"\']+\.(jpg|jpeg|png|gif)[^"\']*)["\']'
        content = re.sub(href_pattern, replace_href, content, flags=re.IGNORECASE)

        return content

    def _is_blogger_image(self, url):
        """Check if URL is a Blogger-hosted image with size parameter."""
        # Modern Blogger URLs use /s###/ pattern
        if ('blogger.googleusercontent.com' in url or
            'blogspot.com' in url or
            'bp.blogspot.com' in url) and re.search(r'/s\d+/', url):
            return True
        # Legacy photos1.blogger.com uses /320/ or /1600/ pattern
        if 'photos1.blogger.com' in url and re.search(r'/\d{3,4}/', url):
            return True
        return False

    def _get_original_url(self, url):
        """Convert a Blogger thumbnail URL to its original full-size URL.

        Modern Blogger uses /s###/ - /s0/ gives the original.
        Legacy photos1.blogger.com uses /320/ or /1600/ - /1600/ is the largest.
        """
        # Modern Blogger pattern: /s###/ -> /s0/
        if ('blogger.googleusercontent.com' in url or
            'blogspot.com' in url or
            'bp.blogspot.com' in url) and re.search(r'/s\d+/', url):
            return re.sub(r'/s\d+/', '/s0/', url)

        # Legacy photos1.blogger.com: /320/ -> /1600/
        if 'photos1.blogger.com' in url:
            # Only convert if it's a thumbnail (320), not already the large version
            if '/320/' in url:
                return url.replace('/320/', '/1600/')

        return None

    def _get_local_path(self, url, is_original=False):
        """Generate a local path for an image URL."""
        url_hash = hashlib.md5(url.encode()).hexdigest()[:12]

        # Get extension from URL
        parsed = urlparse(url)
        path = unquote(parsed.path)
        ext_match = re.search(r'\.([a-zA-Z]{3,4})(?:\?|$)', path)
        if ext_match:
            ext = ext_match.group(1).lower()
            if ext == 'jpeg':
                ext = 'jpg'
        else:
            ext = 'jpg'

        # Extract meaningful name
        name_match = re.search(r'/([^/]+)\.[a-zA-Z]{3,4}(?:\?|$)', path)
        if name_match:
            name = re.sub(r'[^a-zA-Z0-9]', '-', name_match.group(1))[:25]
            suffix = '-orig' if is_original else ''
            filename = f"{name}-{url_hash}{suffix}.{ext}"
        else:
            suffix = '-orig' if is_original else ''
            filename = f"img-{url_hash}{suffix}.{ext}"

        return f"/blog/images/{filename}"

    def _generate_download_script(self):
        """Generate a shell script to download all images with curl.

        Downloads both embedded/thumbnail versions AND original full-size
        versions for Blogger images (which use /s###/ size parameter).
        """
        script_path = self.output_dir / 'download-images.sh'
        images_dir = self.output_dir / 'images'

        # Count total downloads: all thumbnails + originals for Blogger images
        total_thumbs = len(self.image_cache)
        total_originals = len(self.original_urls)
        total = total_thumbs + total_originals

        lines = [
            '#!/bin/bash',
            '# Download all blog images (thumbnails + originals)',
            '# Run this script from the dotcom directory:',
            '#   bash public/blog/download-images.sh',
            '',
            f'cd "{images_dir}"',
            '',
            f'TOTAL={total}',
            'COUNT=0',
            'SKIPPED=0',
            'FAILED=0',
            '',
            f'echo "Downloading {total_thumbs} thumbnails + {total_originals} originals = $TOTAL images..."',
            'echo ""',
            '',
        ]

        # Download embedded/thumbnail versions
        for url, local_path in self.image_cache.items():
            filename = local_path.split('/')[-1]
            escaped_url = url.replace("'", "'\\''")
            lines.append(f'''COUNT=$((COUNT + 1))
if [ -f '{filename}' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): {filename}"
elif [ -f '{filename}.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): {filename}"
elif curl -fSL --connect-timeout 10 --max-time 30 -o '{filename}' '{escaped_url}' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: {filename}"
else
  FAILED=$((FAILED + 1))
  touch '{filename}.failed'
  echo "[$COUNT/$TOTAL] FAILED: {escaped_url}"
fi''')

        # Download original full-size versions for Blogger images
        if self.original_urls:
            lines.append('')
            lines.append('echo ""')
            lines.append(f'echo "--- Downloading {total_originals} original full-size images ---"')
            lines.append('echo ""')

            for thumb_url, orig_url in self.original_urls.items():
                orig_local_path = self._get_local_path(thumb_url, is_original=True)
                filename = orig_local_path.split('/')[-1]
                escaped_url = orig_url.replace("'", "'\\''")
                lines.append(f'''COUNT=$((COUNT + 1))
if [ -f '{filename}' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (exists): {filename}"
elif [ -f '{filename}.failed' ]; then
  SKIPPED=$((SKIPPED + 1))
  echo "[$COUNT/$TOTAL] SKIP (failed before): {filename}"
elif curl -fSL --connect-timeout 10 --max-time 60 -o '{filename}' '{escaped_url}' 2>/dev/null; then
  echo "[$COUNT/$TOTAL] OK: {filename}"
else
  FAILED=$((FAILED + 1))
  touch '{filename}.failed'
  echo "[$COUNT/$TOTAL] FAILED: {escaped_url}"
fi''')

        lines.append('')
        lines.append('echo ""')
        lines.append('echo "========================================"')
        lines.append('echo "Download complete!"')
        lines.append('echo "  Total: $TOTAL"')
        lines.append(f'echo "    Thumbnails: {total_thumbs}"')
        lines.append(f'echo "    Originals: {total_originals}"')
        lines.append('echo "  Skipped (existing): $SKIPPED"')
        lines.append('echo "  Downloaded: $((TOTAL - SKIPPED - FAILED))"')
        lines.append('echo "  Failed: $FAILED"')
        lines.append('echo "========================================"')

        with open(script_path, 'w') as f:
            f.write('\n'.join(lines))

        os.chmod(script_path, 0o755)
        print(f"  Generated download script: {script_path}")
        print(f"    Will download {total_thumbs} thumbnails + {total_originals} originals")

    def generate_posts(self):
        """Generate HTML files for all posts."""
        print("Generating post HTML files...")
        (self.output_dir / 'archive').mkdir(parents=True, exist_ok=True)

        for i, post in enumerate(self.posts):
            if (i + 1) % 50 == 0:
                print(f"  Generated {i + 1}/{len(self.posts)} posts...")

            prev_post = self.posts[i - 1] if i > 0 else None
            next_post = self.posts[i + 1] if i < len(self.posts) - 1 else None
            self._generate_post_html(post, prev_post, next_post)

        print(f"  Generated {len(self.posts)} posts")

    def _generate_post_html(self, post, prev_post, next_post):
        """Generate HTML file for a single post."""
        if not post.published:
            return

        year = post.published.year
        month = f"{post.published.month:02d}"

        post_dir = self.output_dir / 'archive' / str(year) / month
        post_dir.mkdir(parents=True, exist_ok=True)

        html_content = self._render_post_template(post, prev_post, next_post)

        filepath = post_dir / f"{post.slug}.html"
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(html_content)

    def _render_post_template(self, post, prev_post, next_post):
        """Render the HTML template for a post."""
        year = post.published.year
        month = post.published.month
        month_name = self._get_month_name(month, post.lang)

        if post.lang == 'hu':
            date_str = f"{year}. {month_name} {post.published.day}."
        else:
            date_str = f"{month_name} {post.published.day}, {year}"

        # Show labels as plain text (no links to label pages)
        labels_html = ''
        if post.labels:
            labels_html = f'<span class="labels">{" · ".join(html.escape(l) for l in post.labels)}</span>'

        # Comments are not displayed publicly
        comments_html = ''

        nav_prev = ''
        nav_next = ''
        if prev_post and prev_post.published:
            prev_url = f"/blog/archive/{prev_post.published.year}/{prev_post.published.month:02d}/{prev_post.slug}.html"
            nav_prev = f'<a href="{prev_url}" class="nav-prev">← Newer</a>'
        if next_post and next_post.published:
            next_url = f"/blog/archive/{next_post.published.year}/{next_post.published.month:02d}/{next_post.slug}.html"
            nav_next = f'<a href="{next_url}" class="nav-next">Older →</a>'

        css_path = "../../../css/blog.css"

        return f'''<!DOCTYPE html>
<html lang="{post.lang}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{html.escape(post.title)} - Czimi Blog Archive</title>
    <link rel="stylesheet" href="{css_path}">
</head>
<body>
    <header class="blog-header">
        <nav class="breadcrumb">
            <a href="/">xczimi.com</a> &gt;
            <a href="/blog/">Archive</a> &gt;
            <a href="/blog/archive/{year}/">{year}</a> &gt;
            <a href="/blog/archive/{year}/{month:02d}/">{month_name}</a>
        </nav>
    </header>

    <article class="blog-post">
        <h1 class="post-title">{html.escape(post.title)}</h1>
        <div class="post-meta">
            <time datetime="{post.published.isoformat()}">{date_str}</time>
            {labels_html}
        </div>
        <div class="post-content">
            {post.content}
        </div>
    </article>
    {comments_html}
    <nav class="post-navigation">
        {nav_prev}
        <a href="/blog/" class="nav-archive">Archive</a>
        {nav_next}
    </nav>

    <footer class="blog-footer">
        <p>Originally published on <a href="{html.escape(post.original_url or 'https://blog.xczimi.com')}">blog.xczimi.com</a></p>
    </footer>
</body>
</html>'''

    def _get_month_name(self, month, lang):
        """Get localized month name."""
        months_hu = ['', 'január', 'február', 'március', 'április', 'május', 'június',
                     'július', 'augusztus', 'szeptember', 'október', 'november', 'december']
        months_en = ['', 'January', 'February', 'March', 'April', 'May', 'June',
                     'July', 'August', 'September', 'October', 'November', 'December']
        return months_hu[month] if lang == 'hu' else months_en[month]

    def generate_archive_pages(self):
        """Generate index pages for the archive."""
        print("Generating archive pages...")
        self._generate_main_index()

        for year in sorted(self.posts_by_year.keys(), reverse=True):
            self._generate_year_index(year)
            for month in sorted(self.posts_by_year[year].keys(), reverse=True):
                self._generate_month_index(year, month)

        # Single labels lookup page instead of 212 individual pages
        self._generate_labels_page()
        print(f"  Generated archive pages for {len(self.posts_by_year)} years")

    def _generate_main_index(self):
        """Generate the main blog index page."""
        years_html = []

        for year in sorted(self.posts_by_year.keys(), reverse=True):
            months = self.posts_by_year[year]
            post_count = sum(len(posts) for posts in months.values())

            months_html = []
            for month in sorted(months.keys(), reverse=True):
                posts = months[month]
                month_name = self._get_month_name(month, 'en')

                post_list = []
                for post in sorted(posts, key=lambda p: p.published, reverse=True):
                    post_url = f"/blog/archive/{year}/{month:02d}/{post.slug}.html"
                    post_list.append(f'<li><a href="{post_url}">{html.escape(post.title)}</a></li>')

                months_html.append(f'''
                <div class="month-group">
                    <h3><a href="/blog/archive/{year}/{month:02d}/">{month_name}</a> ({len(posts)})</h3>
                    <ul class="post-list">
                        {''.join(post_list)}
                    </ul>
                </div>''')

            years_html.append(f'''
        <section class="year-group" id="year-{year}">
            <h2><a href="/blog/archive/{year}/">{year}</a> <span class="count">({post_count} posts)</span></h2>
            <div class="months">
                {''.join(months_html)}
            </div>
        </section>''')

        year_nav = ' · '.join(f'<a href="#year-{y}">{y}</a>' for y in sorted(self.posts_by_year.keys(), reverse=True))

        index_html = f'''<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog Archive - Czimi</title>
    <link rel="stylesheet" href="css/blog.css">
</head>
<body>
    <header class="blog-header">
        <nav class="breadcrumb">
            <a href="/">xczimi.com</a> &gt; Blog Archive
        </nav>
        <h1>Blog Archive (2005-2010)</h1>
        <p class="archive-description">Personal blog posts from my early years in Vancouver. Originally published at blog.xczimi.com.</p>
    </header>

    <nav class="archive-nav">
        <div class="year-nav">{year_nav}</div>
        <div class="labels-link"><a href="/blog/labels.html">Browse by Label</a> ({len(self.labels)} labels)</div>
    </nav>

    <main class="archive-content">
        {''.join(years_html)}
    </main>

    <footer class="blog-footer">
        <p><a href="/">← Back to xczimi.com</a></p>
    </footer>
</body>
</html>'''

        with open(self.output_dir / 'index.html', 'w', encoding='utf-8') as f:
            f.write(index_html)

    def _generate_year_index(self, year):
        """Generate index page for a year."""
        year_dir = self.output_dir / 'archive' / str(year)
        year_dir.mkdir(parents=True, exist_ok=True)

        months = self.posts_by_year[year]
        post_count = sum(len(posts) for posts in months.values())

        months_html = []
        for month in sorted(months.keys(), reverse=True):
            posts = months[month]
            month_name = self._get_month_name(month, 'en')

            post_list = []
            for post in sorted(posts, key=lambda p: p.published, reverse=True):
                post_url = f"/blog/archive/{year}/{month:02d}/{post.slug}.html"
                date_str = f"{post.published.day}"
                post_list.append(f'<li><span class="date">{date_str}</span> <a href="{post_url}">{html.escape(post.title)}</a></li>')

            months_html.append(f'''
            <section class="month-section">
                <h2><a href="/blog/archive/{year}/{month:02d}/">{month_name}</a> ({len(posts)})</h2>
                <ul class="post-list">
                    {''.join(post_list)}
                </ul>
            </section>''')

        html_content = f'''<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{year} - Blog Archive - Czimi</title>
    <link rel="stylesheet" href="../../css/blog.css">
</head>
<body>
    <header class="blog-header">
        <nav class="breadcrumb">
            <a href="/">xczimi.com</a> &gt;
            <a href="/blog/">Archive</a> &gt; {year}
        </nav>
        <h1>{year} ({post_count} posts)</h1>
    </header>

    <main class="archive-content">
        {''.join(months_html)}
    </main>

    <footer class="blog-footer">
        <p><a href="/blog/">← Back to Archive</a></p>
    </footer>
</body>
</html>'''

        with open(year_dir / 'index.html', 'w', encoding='utf-8') as f:
            f.write(html_content)

    def _generate_month_index(self, year, month):
        """Generate index page for a month."""
        month_dir = self.output_dir / 'archive' / str(year) / f"{month:02d}"
        month_dir.mkdir(parents=True, exist_ok=True)

        posts = self.posts_by_year[year][month]
        month_name = self._get_month_name(month, 'en')

        post_list = []
        for post in sorted(posts, key=lambda p: p.published, reverse=True):
            date_str = f"{month_name} {post.published.day}, {year}"
            labels = ' · '.join(post.labels) if post.labels else ''
            post_list.append(f'''
            <article class="post-preview">
                <h2><a href="{post.slug}.html">{html.escape(post.title)}</a></h2>
                <div class="post-meta">
                    <time datetime="{post.published.isoformat()}">{date_str}</time>
                    {f'<span class="labels">{labels}</span>' if labels else ''}
                </div>
            </article>''')

        html_content = f'''<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{month_name} {year} - Blog Archive - Czimi</title>
    <link rel="stylesheet" href="../../../css/blog.css">
</head>
<body>
    <header class="blog-header">
        <nav class="breadcrumb">
            <a href="/">xczimi.com</a> &gt;
            <a href="/blog/">Archive</a> &gt;
            <a href="/blog/archive/{year}/">{year}</a> &gt; {month_name}
        </nav>
        <h1>{month_name} {year} ({len(posts)} posts)</h1>
    </header>

    <main class="archive-content month-posts">
        {''.join(post_list)}
    </main>

    <footer class="blog-footer">
        <p><a href="/blog/archive/{year}/">← Back to {year}</a></p>
    </footer>
</body>
</html>'''

        with open(month_dir / 'index.html', 'w', encoding='utf-8') as f:
            f.write(html_content)

    def _generate_labels_page(self):
        """Generate a single page listing all labels with their posts."""
        # Sort labels by post count (most popular first)
        sorted_labels = sorted(self.labels.items(), key=lambda x: len(x[1]), reverse=True)

        labels_html = []
        for label, posts in sorted_labels:
            safe_id = label.lower().replace(' ', '-').replace('.', '')
            post_list = []
            for post in sorted(posts, key=lambda p: p.published or datetime.min, reverse=True):
                if post.published:
                    year = post.published.year
                    month = post.published.month
                    post_url = f"/blog/archive/{year}/{month:02d}/{post.slug}.html"
                    post_list.append(f'<li><a href="{post_url}">{html.escape(post.title)}</a></li>')

            labels_html.append(f'''
        <section class="label-group" id="label-{safe_id}">
            <h2>{html.escape(label)} <span class="count">({len(posts)})</span></h2>
            <ul class="post-list">
                {''.join(post_list)}
            </ul>
        </section>''')

        # Quick navigation by label
        label_nav = ' · '.join(
            f'<a href="#label-{label.lower().replace(" ", "-").replace(".", "")}">{html.escape(label)} ({len(posts)})</a>'
            for label, posts in sorted_labels
        )

        html_content = f'''<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Browse by Label - Blog Archive - Czimi</title>
    <link rel="stylesheet" href="css/blog.css">
</head>
<body>
    <header class="blog-header">
        <nav class="breadcrumb">
            <a href="/">xczimi.com</a> &gt;
            <a href="/blog/">Archive</a> &gt; Labels
        </nav>
        <h1>Browse by Label</h1>
        <p class="archive-description">{len(self.labels)} labels across {len(self.posts)} posts</p>
    </header>

    <nav class="archive-nav">
        <div class="label-nav-list">{label_nav}</div>
    </nav>

    <main class="archive-content">
        {''.join(labels_html)}
    </main>

    <footer class="blog-footer">
        <p><a href="/blog/">← Back to Archive</a></p>
    </footer>
</body>
</html>'''

        with open(self.output_dir / 'labels.html', 'w', encoding='utf-8') as f:
            f.write(html_content)

        print(f"  Generated labels lookup page ({len(self.labels)} labels)")

    def print_summary(self):
        """Print conversion summary."""
        print("\n" + "=" * 50)
        print("CONVERSION COMPLETE")
        print("=" * 50)
        print(f"Posts converted: {len(self.posts)}")
        print(f"Labels: {len(self.labels)}")
        print(f"Media from Takeout: {self.images_copied}")
        print(f"External images found: {len(self.image_cache)}")
        print(f"  - Thumbnails: {len(self.image_cache)}")
        print(f"  - Originals (Blogger): {len(self.original_urls)}")
        print(f"  - Total to download: {len(self.image_cache) + len(self.original_urls)}")
        print(f"\nOutput directory: {self.output_dir}")
        print("\nNext steps:")
        print("1. Download images: bash public/blog/download-images.sh")
        print("2. Test locally: python3 -m http.server 8000 -d public")
        print("3. Visit http://localhost:8000/blog/")
        print("4. Deploy to production")

    def run(self):
        """Main execution flow."""
        self.parse_feed()
        self.copy_images()
        self.process_post_images()
        self.generate_posts()
        self.generate_archive_pages()
        self.print_summary()


def main():
    if len(sys.argv) < 3:
        print(__doc__)
        print("\nError: Missing arguments")
        print("Usage: python3 blogger-convert.py <takeout_blogger_dir> <output_dir>")
        print("\nExample:")
        print("  python3 blogger-convert.py Takeout/Blogger public/blog/")
        sys.exit(1)

    takeout_dir = sys.argv[1]
    output_dir = sys.argv[2]

    if not os.path.exists(takeout_dir):
        print(f"Error: Takeout directory not found: {takeout_dir}")
        sys.exit(1)

    converter = TakeoutConverter(takeout_dir, output_dir)
    converter.run()


if __name__ == '__main__':
    main()
