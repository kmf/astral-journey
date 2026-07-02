# astral-journey for Firefox

Two installation paths, pick whichever fits your style:

- **WebExtension themes** (`astral-blackhole/`, `astral-supernova/`) — standard Firefox theme, installs from `about:debugging`. Good for most users.
- **userChrome.css** — power-user approach for tighter control over tab shape, URL bar accents, and menu styling. Auto-switches between astral-blackhole and astral-supernova based on system color scheme.

You can use either, or both (userChrome applies on top of the WebExtension theme).

---

## Option 1: WebExtension themes

### Install from source (no signing)

1. Open `about:debugging#/runtime/this-firefox`
2. Click **Load Temporary Add-on…**
3. Select `astral-blackhole/manifest.json` (or `astral-supernova/manifest.json`)
4. Theme applies immediately

**Note:** Temporary add-ons vanish when Firefox restarts. For persistence, either:

- Sign and submit to [addons.mozilla.org](https://addons.mozilla.org/developers/), or
- Use **Firefox Developer Edition** / **Nightly** / **ESR** with `xpinstall.signatures.required = false` in `about:config`
- Or use the **Unbranded Build** from Mozilla

### Package as .xpi

```bash
cd apps/firefox/astral-blackhole
zip -r ../astral-blackhole.xpi .
cd ../astral-supernova
zip -r ../astral-supernova.xpi .
```

The `.xpi` file is just a renamed zip; drop it into Firefox to install (after signing or on an unbranded build).

### Switching variants

Firefox can have multiple themes installed but only one active. Go to `about:addons` → **Themes** and click **Enable** on the variant you want.

---

## Option 2: userChrome.css

For when the WebExtension theme doesn't go deep enough — e.g., you want the active tab to have an amber astral underline accent, or custom URL bar focus rings.

### One-time Firefox setup

Enable legacy stylesheet support:

1. Open `about:config`
2. Find or create `toolkit.legacyUserProfileCustomizations.stylesheets`
3. Set it to `true`

### Install the stylesheet

```bash
# Find your profile folder
# about:support → Profile Folder → "Show in Finder/Explorer"

# Create chrome/ inside your profile folder, then:
cp userChrome.css <profile-folder>/chrome/userChrome.css

# Restart Firefox
```

### What userChrome.css styles

- Active tab gets an astral-amber underline indicator
- URL bar focus ring in astral-amber
- Find bar with astral-bg-soft background and proper border
- Context menu hover states use astral-bg-hi
- Scrollbars tinted with astral neutrals

### Variant switching

The file uses `@media (prefers-color-scheme: light)` to flip between astral-blackhole and astral-supernova automatically with your system appearance. No manual switching needed.

---

## Combining both

Install one of the WebExtension themes *and* the userChrome.css, and you get:

- Base colors from the WebExtension (the "official" theming API)
- Refined details from userChrome (tab accents, focus rings)

The WebExtension handles what Firefox exposes; userChrome fills in everything else.
