# astral-journey for COSMIC Desktop

Full desktop-wide theming for COSMIC (Pop!_OS, Fedora COSMIC spin, openSUSE Tumbleweed with cosmic-epoch, etc.).

Includes:
- `astral-blackhole.ron` — dark variant desktop theme
- `astral-supernova.ron` — light variant desktop theme
- `cosmic-term-astral-blackhole.ron` — terminal color scheme (dark)
- `cosmic-term-astral-supernova.ron` — terminal color scheme (light)

## Install the desktop theme

```bash
# Dark mode theme
mkdir -p ~/.config/cosmic/com.system76.CosmicTheme.Dark.Builder/v1
cp astral-blackhole.ron ~/.config/cosmic/com.system76.CosmicTheme.Dark.Builder/v1/Theme

# Light mode theme
mkdir -p ~/.config/cosmic/com.system76.CosmicTheme.Light.Builder/v1
cp astral-supernova.ron ~/.config/cosmic/com.system76.CosmicTheme.Light.Builder/v1/Theme
```

Or import via the Settings app:
1. Open **Settings → Appearance**
2. Scroll to **Custom Theme** at the bottom
3. Click **Import** and pick the `.ron` file

Switching between dark and light in **Settings → Appearance** will toggle between astral-blackhole and astral-supernova.

## Install the cosmic-term schemes

```bash
# Open cosmic-term:
# View > Color schemes… > Import
# Select cosmic-term-astral-blackhole.ron (and/or -supernova)
```

Or copy them directly:

```bash
mkdir -p ~/.config/cosmic-term/color-schemes
cp cosmic-term-astral-*.ron ~/.config/cosmic-term/color-schemes/
```

## Where astral-journey shows up

COSMIC's unified theming means once applied, astral-journey colors flow through:

- The desktop panel, dock, and applets
- All native COSMIC apps (Files, Terminal, Editor, Store, Settings)
- Libadwaita/GTK4 apps via the COSMIC GTK adapter
- Firefox (when the COSMIC theme integration is enabled)

## Notes

- COSMIC's RON theme format is still evolving. If you're on a version newer than epoch 1.0 and some fields have been renamed or added, the easiest fix is: in Settings → Appearance → **Export** your current theme, then merge the astral-journey color values into it.
- The `neutral_0` through `neutral_10` scale is an 11-step interpolation from bg to fg — COSMIC uses it for surface elevation and hover states throughout the UI.
- `is_frosted: true` enables COSMIC's translucent panel blur effect. Set to `false` if you prefer solid surfaces.
