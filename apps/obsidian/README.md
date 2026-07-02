# astral-journey for Obsidian

A single-file Obsidian theme with both astral-blackhole (dark) and astral-supernova (light) variants that follow Obsidian's built-in theme mode toggle.

## Install (manual)

```bash
# Replace <vault> with your vault path
VAULT=~/vaults/my-notes
mkdir -p "$VAULT/.obsidian/themes/Astral Journey"
cp theme.css     "$VAULT/.obsidian/themes/Astral Journey/theme.css"
cp manifest.json "$VAULT/.obsidian/themes/Astral Journey/manifest.json"
```

Then in Obsidian:

1. **Settings → Appearance**
2. Under **Themes**, click **Manage**
3. Find **Astral Journey** in the list and click **Use**

## Install (via BRAT — optional)

If you have [BRAT](https://github.com/TfTHacker/obsidian42-brat) installed, you can add this repo's Obsidian path to get auto-updates. BRAT settings → "Add Beta Theme" → paste the repo URL.

## What's styled

- Headings (H1–H6 each get a different astral-journey accent)
- Links (internal / external / unresolved)
- Inline and fenced code blocks with Prism syntax colors
- Tags
- Callouts (note / info / success / warning / error / question / quote / important / tip — each mapped to an astral-journey accent)
- Graph view (node / focused / tag / unresolved)
- Tables, blockquotes, tabs

## Variant switching

Obsidian's built-in **Settings → Appearance → Base color scheme** (Light / Dark / Adapt to system) toggle controls which astral-journey variant is active — astral-blackhole when dark, astral-supernova when light.
