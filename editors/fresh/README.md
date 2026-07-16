# Astral Journey for fresh

Two variants: **astral-blackhole** (dark) and **astral-supernova** (light).

Themes for the [fresh](https://github.com/sinelaw/fresh) editor. Colors are RGB
triplets grouped into `editor`, `ui`, `search`, `diagnostic`, and `syntax`.

Syntax follows the astral role mapping used across the other editors: keyword →
coral, string → aurora (green), function → azure (blue), type → violet, constant
and builtin → orange, comment → muted, operators/variables → foreground.

## Install

Copy the theme file for your variant into fresh's themes directory:

```bash
cp editors/fresh/astral-blackhole.json ~/.config/fresh/themes/
cp editors/fresh/astral-supernova.json ~/.config/fresh/themes/
```

Then select the theme by its `name` (`astral-blackhole` or `astral-supernova`)
in fresh's settings.

> If your build ships bundled themes under `crates/fresh-editor/themes/`, drop the
> files there instead and rebuild.
