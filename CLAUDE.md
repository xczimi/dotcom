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

### Main Site Structure
- `index.html` - Main homepage with tile-based layout using CSS floats
- `resume.pdf` - Static PDF resume
- `resume.md` - Markdown version of resume
- `reset-min.css` - CSS reset styles
- `xczimi.jpg`, `czimi.jpg` - Profile images

### Sub-applications
- `/poker/` - Poker tournament timer and RSVP tools (JavaScript-based)
  - `/poker/timer/poker.html` - Main poker tournament timer with blinds progression
  - `/poker/timer/league.html` - League management
  - `/poker/rsvp.html` - Event RSVP functionality
- `/xpredict/` - Soccer prediction tools with Facebook Open Graph integration
- `/canadian/` - Additional content section
- `/tbbt/` - Additional content section

### Key Components

#### Main Homepage (`index.html`)
- Tile-based grid layout using CSS floats (3x3 grid)
- Color-coded sections: Bio (teal), Tech (green), Orange, Poker (cyan), Sports (lime), Roots (orange), Social (mint), Blogs (light green), Photo
- Fixed tile dimensions (150px × 175px) with 5px margins
- Inline CSS styling with XHTML 1.0 Strict DOCTYPE
- Links to external resources and sub-sections

#### Poker Timer (`/poker/timer/poker.html`)
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
# Start a simple HTTP server for testing
python3 -m http.server 8000

# Or use PHP if available (though not required)
php -S localhost:8000
```

### Testing Changes
- Direct file editing - no compilation needed
- View main site: Access `index.html` or root directory
- Test poker timer: Navigate to `/poker/timer/poker.html`
- Test other tools: Navigate to respective subdirectories

### Deployment
- Direct file upload/sync to web server
- No build process required
- Pure static files - no server-side dependencies

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
- `reset-min.css` - CSS reset styles
- Image assets: `xczimi.jpg`, `czimi.jpg` 
- jQuery libraries in `/poker/timer/lib/` for poker timer functionality
- Sound files for timer notifications (`ding.wav`)