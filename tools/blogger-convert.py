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
from datetime import datetime
from collections import defaultdict
from pathlib import Path

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
        """Update image URLs in post content to point to local files."""
        print("Processing image URLs in posts...")

        # Build a map of available local images
        images_dir = self.output_dir / 'images'
        local_images = set()
        if images_dir.exists():
            local_images = {f.name.lower() for f in images_dir.iterdir() if f.is_file()}

        for post in self.posts:
            post.content = self._update_image_urls(post.content, local_images)

    def _update_image_urls(self, content, local_images):
        """Update blogger image URLs to local paths."""
        # Pattern for blogger-hosted images
        patterns = [
            (r'(src=["\'])https?://[^"\']*blogger\.googleusercontent\.com[^"\']*(["\'])', r'\1/blog/images/\2'),
            (r'(src=["\'])https?://[^"\']*bp\.blogspot\.com[^"\']*(["\'])', r'\1/blog/images/\2'),
            (r'(href=["\'])https?://[^"\']*blogger\.googleusercontent\.com[^"\']*(["\'])', r'\1/blog/images/\2'),
        ]

        # For now, keep remote URLs as they should still work
        # In future, could match specific filenames to local copies

        return content

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
        print(f"Comments preserved: {sum(len(p.comments) for p in self.posts)}")
        print(f"Media files copied: {self.images_copied}")
        print(f"Labels: {len(self.labels)}")
        print(f"\nOutput directory: {self.output_dir}")
        print("\nNext steps:")
        print("1. Test locally: python3 -m http.server 8000 -d public")
        print("2. Visit http://localhost:8000/blog/")
        print("3. Deploy to production")

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
