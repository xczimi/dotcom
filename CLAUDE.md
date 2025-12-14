# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a personal website (xczimi.com) for Peter Czimmermann. It's a simple static website with several distinct sections and interactive tools.

## Technology Stack

- **Frontend**: HTML5, CSS3, vanilla JavaScript (jQuery in poker timer)
- **Static site**: No server-side processing, direct file serving
- **No package managers** (no composer, npm, etc.)
- **No build process** - direct file serving

## Architecture & Structure

### Repository Layout
```
/dotcom
├── public/           # All deployable website content
├── infrastructure/   # OpenTofu/Terraform AWS infrastructure
├── CLAUDE.md         # This file
└── README.md
```

### Main Site Structure (`public/`)
- `public/index.html` - Main homepage with tile-based layout using CSS floats
- `public/resume.pdf` - Static PDF resume
- `public/resume.md` - Markdown version of resume
- `public/reset-min.css` - CSS reset styles
- `public/xczimi.jpg`, `public/czimi.jpg` - Profile images

### Sub-applications
- `public/poker/` - Poker tournament timer and RSVP tools (JavaScript-based)
  - `public/poker/timer/poker.html` - Main poker tournament timer with blinds progression
  - `public/poker/timer/league.html` - League management
  - `public/poker/rsvp.html` - Event RSVP functionality
- `public/xpredict/` - Soccer prediction tools with Facebook Open Graph integration
- `public/tbbt/` - Additional content section

### Key Components

#### Main Homepage (`public/index.html`)
- Tile-based grid layout using CSS floats (3x3 grid)
- Color-coded sections: Bio (teal), Tech (green), Orange, Poker (cyan), Sports (lime), Roots (orange), Social (mint), Blogs (light green), Photo
- Fixed tile dimensions (150px × 175px) with 5px margins
- Inline CSS styling with XHTML 1.0 Strict DOCTYPE
- Links to external resources and sub-sections

#### Poker Timer (`public/poker/timer/poker.html`)
- Full-featured tournament timer with JavaScript
- Configurable blinds progression and breaks
- Start/pause/resume/reset functionality
- Visual countdown with color-coded states
- Sound notifications for level changes
- Editable tournament structure

## Common Development Tasks

Since this is a simple static website with no build system:

### Local Development
```bash
# Start a simple HTTP server for testing (serve from public/)
python3 -m http.server 8000 -d public

# Or use PHP if available (though not required)
php -S localhost:8000 -t public
```

### Testing Changes
- Direct file editing - no compilation needed
- View main site: Access `http://localhost:8000/`
- Test poker timer: Navigate to `/poker/timer/poker.html`
- Test other tools: Navigate to respective subdirectories

### Deployment
The site is hosted on AWS S3 + CloudFront. Infrastructure is managed via OpenTofu in `infrastructure/`.

```bash
# Sync public/ folder to S3
aws s3 sync public/ s3://xczimi.com

# Invalidate CloudFront cache
aws cloudfront create-invalidation \
  --distribution-id $(cd infrastructure && tofu output -raw cloudfront_distribution_id) \
  --paths "/*"
```

## Code Patterns

### HTML/CSS Style
- XHTML 1.0 Strict DOCTYPE
- Inline CSS in `<head>` section (no external CSS files except reset)
- Float-based layouts for tile positioning
- Fixed dimensions for components (tiles: 150px × 175px)
- Color-coded visual sections using background colors

### JavaScript Style  
- Vanilla JavaScript with custom timer and stage management objects
- Event-driven architecture for poker timer functionality
- No external dependencies except jQuery in poker timer libraries
- Direct DOM manipulation using custom helper functions

### Data Structure
- Hardcoded configuration data in JavaScript arrays
- Tournament structures defined as stage objects with timing and info
- No external data sources or APIs

## File Dependencies
- `public/reset-min.css` - CSS reset styles
- Image assets: `public/xczimi.jpg`, `public/czimi.jpg`
- jQuery libraries in `public/poker/timer/lib/` for poker timer functionality
- Sound files for timer notifications (`ding.wav`)