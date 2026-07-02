# astral journey

> warm star-glow falling into deep space.
> a sunrise on the event horizon.

A colorscheme that traces one arc of light — from the warm glow of a dying star,
through the violet dust of a nebula, out into the cold blue of interstellar space.
Two variants — `astral-blackhole` (dark) and `astral-supernova` (light) — with
matching configs for every tool in your stack.

**[kmf.github.io/astral-journey](https://kmf.github.io/astral-journey/)** — live palette preview with blackhole/supernova toggle.

## Palette

### astral-blackhole (dark)

**Neutrals**

| | Token | Hex |
|---|---|---|
| ![bg](https://singlecolorimage.com/get/0d0f1e/16x16) | bg | `#0d0f1e` |
| ![bg_soft](https://singlecolorimage.com/get/14172a/16x16) | bg_soft | `#14172a` |
| ![bg_hi](https://singlecolorimage.com/get/1c2038/16x16) | bg_hi | `#1c2038` |
| ![border](https://singlecolorimage.com/get/2a2f4d/16x16) | border | `#2a2f4d` |
| ![fg](https://singlecolorimage.com/get/ebe8d2/16x16) | fg | `#ebe8d2` |
| ![fg_alt](https://singlecolorimage.com/get/fdfbe4/16x16) | fg_alt | `#fdfbe4` |
| ![fg_muted](https://singlecolorimage.com/get/767ba6/16x16) | fg_muted | `#767ba6` |

**Accents**

| | Token | Hex |
|---|---|---|
| ![yellow](https://singlecolorimage.com/get/ffff99/16x16) | yellow | `#ffff99` |
| ![amber](https://singlecolorimage.com/get/ffcc66/16x16) | amber | `#ffcc66` |
| ![orange](https://singlecolorimage.com/get/ff9933/16x16) | orange | `#ff9933` |
| ![peach](https://singlecolorimage.com/get/ffcc99/16x16) | peach | `#ffcc99` |
| ![coral](https://singlecolorimage.com/get/ff6e6e/16x16) | coral | `#ff6e6e` |
| ![lilac](https://singlecolorimage.com/get/cc99cc/16x16) | lilac | `#cc99cc` |
| ![violet](https://singlecolorimage.com/get/b78ae0/16x16) | violet | `#b78ae0` |
| ![plum](https://singlecolorimage.com/get/664466/16x16) | plum | `#664466` |
| ![haze](https://singlecolorimage.com/get/99ccff/16x16) | haze | `#99ccff` |
| ![azure](https://singlecolorimage.com/get/6a97ea/16x16) | azure | `#6a97ea` |
| ![teal](https://singlecolorimage.com/get/38a8d0/16x16) | teal | `#38a8d0` |
| ![aurora](https://singlecolorimage.com/get/7ed4a3/16x16) | aurora | `#7ed4a3` |

### astral-supernova (light)

**Neutrals**

| | Token | Hex |
|---|---|---|
| ![bg](https://singlecolorimage.com/get/fdf9ec/16x16) | bg | `#fdf9ec` |
| ![bg_soft](https://singlecolorimage.com/get/f6f0dc/16x16) | bg_soft | `#f6f0dc` |
| ![bg_hi](https://singlecolorimage.com/get/efe8cf/16x16) | bg_hi | `#efe8cf` |
| ![border](https://singlecolorimage.com/get/e2d8ba/16x16) | border | `#e2d8ba` |
| ![fg](https://singlecolorimage.com/get/292140/16x16) | fg | `#292140` |
| ![fg_alt](https://singlecolorimage.com/get/1c1730/16x16) | fg_alt | `#1c1730` |
| ![fg_muted](https://singlecolorimage.com/get/6b6a8a/16x16) | fg_muted | `#6b6a8a` |

**Accents**

| | Token | Hex |
|---|---|---|
| ![yellow](https://singlecolorimage.com/get/b07d00/16x16) | yellow | `#b07d00` |
| ![amber](https://singlecolorimage.com/get/c9820f/16x16) | amber | `#c9820f` |
| ![orange](https://singlecolorimage.com/get/d9660a/16x16) | orange | `#d9660a` |
| ![peach](https://singlecolorimage.com/get/c77a4a/16x16) | peach | `#c77a4a` |
| ![coral](https://singlecolorimage.com/get/d83a4a/16x16) | coral | `#d83a4a` |
| ![lilac](https://singlecolorimage.com/get/a34fa8/16x16) | lilac | `#a34fa8` |
| ![violet](https://singlecolorimage.com/get/7b4fc0/16x16) | violet | `#7b4fc0` |
| ![plum](https://singlecolorimage.com/get/664466/16x16) | plum | `#664466` |
| ![haze](https://singlecolorimage.com/get/2f6fd0/16x16) | haze | `#2f6fd0` |
| ![azure](https://singlecolorimage.com/get/2f5fc7/16x16) | azure | `#2f5fc7` |
| ![teal](https://singlecolorimage.com/get/006699/16x16) | teal | `#006699` |
| ![aurora](https://singlecolorimage.com/get/1f8a5c/16x16) | aurora | `#1f8a5c` |

## Install

Every tool has its config under a predictable path — `terminals/`, `editors/`,
`tools/`, `apps/`, `desktop/`. Copy the file for your variant into the location
your tool expects. See each directory's README for tool-specific steps.

```
terminals/   alacritty · ghostty · kitty · wezterm · foot · iterm2 · windows-terminal
editors/     vscode · zed · neovim · emacs · intellij
tools/       bat · btop · fzf · k9s · lazygit · starship · tmux · yazi
apps/        claude-code · obsidian · opencode · chrome · firefox
desktop/     cosmic · dms
```

The full token system, ANSI mapping and design intent live in
[COLORSPEC.md](./COLORSPEC.md); machine-readable values in
[palette.json](./palette.json).

## License

MIT
