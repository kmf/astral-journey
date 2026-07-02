# Astral Journey for Dank Material Shell

Astral Journey theme for [Dank Material Shell](https://github.com/AvengeMedia/dms-plugin-registry) — a Material Design 3 GNOME Shell theme.

## Flavors

- **Blackhole** — deep near-black space surfaces (default for dark mode)
- **Supernova** — warm cream light surfaces (default for light mode)

## Accents

8 accent colors, each selectable per-flavor:

- **Amber** (default) — `#ffcc66` / `#c9820f`
- **Orange** — `#ff9933` / `#d9660a`
- **Coral** — `#ff6e6e` / `#d83a4a`
- **Lilac** — `#cc99cc` / `#a34fa8`
- **Violet** — `#b78ae0` / `#7b4fc0`
- **Azure** — `#6a97ea` / `#2f5fc7`
- **Teal** — `#38a8d0` / `#006699`
- **Aurora** — `#7ed4a3` / `#1f8a5c`

This gives 2 flavors × 8 accents = 16 combinations, each with dark/light mode support.

## Install

Point DMS at this `theme.json` via its [config file](https://danklinux.com/docs/dankmaterialshell/custom-themes#via-configuration-file). In `~/.config/DankMaterialShell/settings.json`:

```json
{
  "currentThemeName": "custom",
  "customThemeFile": "/path/to/astral-journey/desktop/dms/theme.json"
}
```

DMS reloads automatically on save. Pick the **Blackhole** or **Supernova** flavor and one of the 8 accents from the DMS variant selector.
