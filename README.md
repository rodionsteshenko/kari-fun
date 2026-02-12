# kari-fun

Static snapshot of Kari's portfolio site for local/offline iteration and experimentation.

## Develop / Preview locally

```bash
cd kari
python3 -m http.server 8000
# open http://localhost:8000
```

The root page (`index.html`) provides navigation between all versions.

## Publish (GitHub Pages)

1) Push to `main`
2) In GitHub repo settings:
   - Settings → Pages
   - Source: **Deploy from a branch**
   - Branch: `main` / Folder: `/ (root)`

After that, GitHub Pages will serve from the repo root.

## Versions

Multiple portfolio variations for experimentation:

- **`/`** - Navigation hub (choose a version)
- **`/light/`** - Original light theme
- **`/dark/`** - Dark mode variation
- Future versions can be added as new directories

Each version is independent with its own styles and pages.
