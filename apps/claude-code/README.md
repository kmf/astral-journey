# astral-journey for Claude Code

Claude Code ships a small set of built-in themes (light / dark / dark-daltonized / etc.) and does not yet expose per-element color configuration — the feature is [tracked in issue #25366](https://github.com/anthropics/claude-code/issues/25366).

Until that lands, astral-journey for Claude Code provides:

1. **A coordinating `settings.json`** — picks the closest built-in theme (`dark` for astral-blackhole) and forces truecolor rendering so syntax colors stay vibrant even over SSH.
2. **A custom statusline script** — `astral-statusline.sh` renders the session status using astral-journey's actual palette via ANSI truecolor escape sequences.

Since astral-journey is what your terminal uses, Claude Code will inherit astral-journey's ANSI palette automatically for its diff highlighting and user input colors. The statusline gives you the astral-journey look for the session info row.

## Install

```bash
# Settings file
mkdir -p ~/.claude
cp settings.json          ~/.claude/settings.json
cp astral-statusline.sh   ~/.claude/astral-statusline.sh
chmod +x                  ~/.claude/astral-statusline.sh
```

## Customize the variant

In `~/.claude/settings.json`, the `env.ASTRAL_VARIANT` controls which astral-journey palette the statusline uses:

```json
{
  "env": {
    "ASTRAL_VARIANT": "blackhole"   // or "supernova"
  }
}
```

## What the statusline shows

```
★  Claude 4.7 Opus  ~/projects/astral-journey  ▰▰▰▱▱ 35%  $0.42
```

Left to right: astral star, model, working directory, context usage gauge (color-shifts green → yellow → red as it fills), session cost.

## When full theme support ships

When Claude Code adds full user-theme configuration, this directory will gain a `astral-blackhole.json` and `astral-supernova.json` alongside the settings file.
