# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a static HTML clone of the kari.fun portfolio website, originally built on Cargo CMS. The site has been extracted and converted to standalone HTML/CSS for local editing and GitHub Pages hosting.

## Development

**Run local server:**
```bash
python3 -m http.server 8000
# Open http://localhost:8000
```

Root page provides navigation to all versions (`/light/`, `/dark/`, etc.)

**Deploy to GitHub Pages:**
Push to `main` branch. GitHub Pages serves from repo root.

## Architecture

### CSS Structure

The styling is split across two files with specific purposes:

- **`inline-styles.css`** - Complete Cargo CMS framework (53KB, minified)
  - Contains all base Cargo styles, grid system, animations, PhotoSwipe
  - Includes `[local-style="16007614"]` overrides for this specific page
  - **DO NOT** modify the minified portion (lines 1-3) - it's the Cargo framework

- **`styles.css`** - Additional custom styles from Cargo stylesheet
  - Typography definitions (Junicode Condensed, Social Variable fonts)
  - Color schemes and link hover states

### Typography Control

To adjust font sizes, edit `inline-styles.css` around line 45-50:

```css
[data-predefined-style="true"] [local-style="16007614"] h1 {
    font-size: 5.4rem;        /* Main heading size */
    line-height: 1.2;         /* Tighter = less spacing */
    color: rgb(40, 40, 40);
    padding: 0;
    margin: 0;
}
```

### Page Structure

- **`index.html`** - Root navigation hub (links to all versions)
- **`light/`** - Original light theme version
  - `light/index.html` - Homepage with project grid
  - `light/pages/*.htm` - Clean generated project pages (15 total)
  - `light/pages/*.html` - Original downloaded HTML from Cargo (reference only)
  - `light/inline-styles.css` - Cargo framework CSS
  - `light/styles.css` - Custom styles
- **`dark/`** - Dark mode variation (independent codebase)
- **`kari-fun-original.html`** - Complete original page source (reference)

### Images

All images are served from Cargo's CDN (`freight.cargo.site`). No local image hosting.

### HTML Attributes

Pages use Cargo-specific attributes that control styling via CSS selectors:
- `local-style="16007614"` - Applies page-specific style overrides
- `data-predefined-style="true"` - Enables Cargo preset styles
- Custom elements: `<bodycopy>`, `<projectcontent>`

## Making Changes

**Adjust homepage font size:** Edit `light/inline-styles.css` line 46

**Add new project page:**
1. Create `.htm` file in `light/pages/` directory
2. Follow structure from existing pages
3. Add link in `light/index.html`

**Change colors:** Edit inline `style=""` attributes in HTML or add CSS to `light/styles.css`

**Create new version:**
1. Copy `light/` directory to new folder (e.g., `v2/`)
2. Make desired changes
3. Add link in root `index.html`

## Notes

- The `.html` files in `pages/` are original Cargo downloads (for reference)
- The `.htm` files are clean generated versions (actually used)
- CSS specificity relies on attribute selectors like `[local-style="16007614"]`
- Font size uses `rem` units - base is browser default (usually 16px)
