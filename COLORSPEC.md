# Astral Journey — Colorspec

> warm star-glow falling into deep space.
> a sunrise on the event horizon.

**Name:** Astral Journey
**Variants:** `astral-blackhole` (dark) · `astral-supernova` (light)
**Version:** 0.1.0
**License:** MIT

---

## About the name

**Astral Journey** traces a single arc of light: the warm glow of a dying star
(`#FFFF99 → #FFCC99 → #FFCC66 → #FF9933`), through the violet dust of a nebula
(`#664466 → #CC99CC`), out into the cold blue of deep space
(`#99CCFF → #3366CC → #006699`).

- `astral-blackhole` — the dark roast of the cosmos. Near-black indigo void, with
  the accretion-disk warmth glowing against it.
- `astral-supernova` — the flash. A warm, near-white star field with deepened,
  contrast-safe accents.

---

## Design intent

A paired dark/light colorscheme built from a single 9-color source palette that
reads as a gradient from stellar warmth to interstellar cold:

- **Cosmic-indigo backgrounds** on the dark variant — deep blue-violet, not grey
  or teal — so the warm accents feel like light sources.
- **Warm starlight foreground** (`#ebe8d2`) that carries heat through typography
  rather than through accent saturation.
- **Full warm→cool accent spectrum** — the source palette gives yellows, oranges,
  a peach, two purples and three blues; `coral`, `aurora` and a few brights are
  derived to complete a usable 16-color ANSI set.
- **WCAG-tuned light variant** — every `astral-supernova` accent is darkened until
  it clears AA against the pale background.

---

## astral-blackhole (dark)

Deep-space indigo base with warm starlight text and glowing accents.

### Neutrals

| Token | Hex | Role |
|---|---|---|
| `--astral-bg` | `#0d0f1e` | Base background — deep-space indigo void |
| `--astral-bg-soft` | `#14172a` | Elevated surface — cards, panels, code blocks |
| `--astral-bg-hi` | `#1c2038` | Hover / selection / active state |
| `--astral-border` | `#2a2f4d` | Dividers, subtle borders |
| `--astral-fg` | `#ebe8d2` | Primary text — warm starlight |
| `--astral-fg-alt` | `#fdfbe4` | Emphasized text — bright star glow |
| `--astral-fg-muted` | `#8b90bd` | Comments, secondary text, inactive UI |

### Accents

| Token | Hex | Role |
|---|---|---|
| `--astral-yellow` | `#ffff99` | Bright markers, highlights, streaks |
| `--astral-amber` | `#ffcc66` | Primary accent, warnings, active states |
| `--astral-orange` | `#ff9933` | Cursor, secondary emphasis, solar flare |
| `--astral-peach` | `#ffcc99` | Soft highlights, gentle emphasis |
| `--astral-coral` | `#ff6e6e` | Errors, destructive actions, critical values *(derived)* |
| `--astral-lilac` | `#cc99cc` | Special syntax, rare markers |
| `--astral-violet` | `#b78ae0` | Types, XP / gamification markers *(derived)* |
| `--astral-plum` | `#664466` | Deep nebula shadow — selection tint, deep fills |
| `--astral-haze` | `#99ccff` | Cosmic haze — bright info, links |
| `--astral-azure` | `#6a97ea` | Links, informational states, primary interactive |
| `--astral-teal` | `#38a8d0` | Success indicators, shields, constants |
| `--astral-aurora` | `#7ed4a3` | Strings, success states, positive deltas *(derived)* |

### Neutral ramp

11-step luminance ramp from darkest to lightest, for UI frameworks requiring a
full neutral scale (e.g., COSMIC Desktop).

| Index | Hex | Maps to |
|---|---|---|
| 0 | `#0d0f1e` | bg |
| 1 | `#14172a` | bg-soft |
| 2 | `#1c2038` | bg-hi |
| 3 | `#2a2f4d` | border |
| 4 | `#3f4670` | — |
| 5 | `#8b90bd` | fg-muted |
| 6 | `#9a9ec2` | — |
| 7 | `#c4c2d8` | — |
| 8 | `#ebe8d2` | fg |
| 9 | `#fdfbe4` | fg-alt |
| 10 | `#fffff0` | — |

---

## astral-supernova (light)

Warm near-white star field with deep cosmic-ink text and darkened accents.

### Neutrals

| Token | Hex | Role |
|---|---|---|
| `--astral-bg` | `#fdf9ec` | Base background — warm star-white |
| `--astral-bg-soft` | `#f6f0dc` | Elevated surface — cards, panels, code blocks |
| `--astral-bg-hi` | `#efe8cf` | Hover / selection / active state |
| `--astral-border` | `#e2d8ba` | Dividers, subtle borders |
| `--astral-fg` | `#292140` | Primary text — deep cosmic ink |
| `--astral-fg-alt` | `#1c1730` | Emphasized text — deepest indigo |
| `--astral-fg-muted` | `#5d5c78` | Comments, secondary text, inactive UI |

### Accents

| Token | Hex | Role |
|---|---|---|
| `--astral-yellow` | `#946900` | Bright markers, highlights, streaks |
| `--astral-amber` | `#9d650c` | Primary accent, warnings, active states |
| `--astral-orange` | `#b65608` | Cursor, secondary emphasis, solar flare |
| `--astral-peach` | `#a65f33` | Soft highlights, gentle emphasis |
| `--astral-coral` | `#d62e3f` | Errors, destructive actions, critical values |
| `--astral-lilac` | `#a34fa8` | Special syntax, rare markers |
| `--astral-violet` | `#7b4fc0` | Types, XP / gamification markers |
| `--astral-plum` | `#664466` | Deep nebula — selection tint, deep fills |
| `--astral-haze` | `#2f6fd0` | Cosmic haze — bright info, links |
| `--astral-azure` | `#2f5fc7` | Links, informational states, primary interactive |
| `--astral-teal` | `#006699` | Success indicators, shields, constants |
| `--astral-aurora` | `#1d8156` | Strings, success states, positive deltas |

### Neutral ramp

| Index | Hex | Maps to |
|---|---|---|
| 0 | `#292140` | fg |
| 1 | `#3a3358` | — |
| 2 | `#524d70` | — |
| 3 | `#5d5c78` | fg-muted |
| 4 | `#9a97b0` | — |
| 5 | `#e2d8ba` | border |
| 6 | `#efe8cf` | bg-hi |
| 7 | `#f6f0dc` | bg-soft |
| 8 | `#fdf9ec` | bg |
| 9 | `#fefbf2` | — |
| 10 | `#fffef8` | — |

---

## ANSI 16-color mapping

For terminal emulator configs (Ghostty, Alacritty, Kitty, WezTerm, foot, iTerm2,
Windows Terminal).

### astral-blackhole

| ANSI | Name | Hex |
|---|---|---|
| 0 | black | `#1c2038` |
| 1 | red | `#ff6e6e` |
| 2 | green | `#7ed4a3` |
| 3 | yellow | `#ffcc66` |
| 4 | blue | `#6a97ea` |
| 5 | magenta | `#cc99cc` |
| 6 | cyan | `#38a8d0` |
| 7 | white | `#ebe8d2` |
| 8 | bright black | `#3f4670` |
| 9 | bright red | `#ff8a80` |
| 10 | bright green | `#98e0ba` |
| 11 | bright yellow | `#ffff99` |
| 12 | bright blue | `#99ccff` |
| 13 | bright magenta | `#d9a9e0` |
| 14 | bright cyan | `#5cc0e0` |
| 15 | bright white | `#fdfbe4` |
| — | foreground | `#ebe8d2` |
| — | background | `#0d0f1e` |
| — | cursor | `#ff9933` |
| — | selection bg | `#664466` |

### astral-supernova

| ANSI | Name | Hex |
|---|---|---|
| 0 | black | `#292140` |
| 1 | red | `#d62e3f` |
| 2 | green | `#1d8156` |
| 3 | yellow | `#946900` |
| 4 | blue | `#2f5fc7` |
| 5 | magenta | `#a34fa8` |
| 6 | cyan | `#006699` |
| 7 | white | `#f6f0dc` |
| 8 | bright black | `#5d5c78` |
| 9 | bright red | `#c22f3e` |
| 10 | bright green | `#187a4f` |
| 11 | bright yellow | `#9c6e00` |
| 12 | bright blue | `#2551ad` |
| 13 | bright magenta | `#8f4494` |
| 14 | bright cyan | `#005982` |
| 15 | bright white | `#1c1730` |
| — | foreground | `#292140` |
| — | background | `#fdf9ec` |
| — | cursor | `#b65608` |
| — | selection bg | `#66446630` |

---

## Source palette

The nine seed colors, in journey order:

| Hex | Stop |
|---|---|
| `#FFFF99` | star yellow |
| `#FFCC99` | peach |
| `#FFCC66` | amber |
| `#FF9933` | solar flare orange |
| `#664466` | nebula plum |
| `#CC99CC` | nebula lilac |
| `#99CCFF` | cosmic haze |
| `#3366CC` | deep azure |
| `#006699` | interstellar teal |
