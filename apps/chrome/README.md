# astral-journey for Chrome / Chromium / Edge / Brave

Chrome themes are WebExtensions with a theme-only manifest. You install them as unpacked extensions in developer mode, or package them into `.crx` files for distribution.

## Install (unpacked — works on all Chromium browsers)

For each variant:

1. Open `chrome://extensions` (or `brave://extensions`, `edge://extensions`)
2. Toggle **Developer mode** on (top right)
3. Click **Load unpacked**
4. Select the `astral-blackhole/` folder (or `astral-supernova/`)
5. The theme applies immediately — disable/re-enable to swap variants

**Note:** Chrome only allows one theme active at a time. Install both and enable whichever you want.

## Install (packaged `.crx`)

```bash
# From the apps/chrome/ directory:
# (requires a Chromium-based browser installed)

# macOS
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --pack-extension=./astral-blackhole
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --pack-extension=./astral-supernova

# Linux
google-chrome --pack-extension=./astral-blackhole
google-chrome --pack-extension=./astral-supernova
```

This produces `astral-blackhole.crx` + `astral-blackhole.pem` (keep the .pem for future re-signing).

## Chrome Web Store (optional)

To publish, zip each directory and upload to the [Chrome Developer Dashboard](https://chrome.google.com/webstore/devconsole). Themes go through the same review as extensions.

## What gets colored

Chrome's theme API covers:

- Browser frame (title bar + tab strip background)
- Active and inactive tabs
- Toolbar (address bar row)
- Bookmark bar
- New Tab Page background, text, links, header
- Omnibox (address bar) background and text

It does **not** theme web content itself — pages render with their own styles. For a fully themed browsing experience, combine this with a page-coloring extension like [Dark Reader](https://darkreader.org/) configured with astral-journey colors, or use Chrome's built-in **Settings → Appearance → Customize Chrome → Colors** as a fallback.

## Notes

- RGB values are integer tuples `[r, g, b]` in Chrome's theme JSON — they don't accept hex directly.
- The `tints` block uses HSL deltas `[hue, saturation, lightness]` with `-1` meaning "no change."
- Firefox has its own theme format (see `../firefox/`) — similar idea, different field names.
