# Astral Journey for IntelliJ / JetBrains IDEs

Two variants: **Astral Blackhole** (dark) and **Astral Supernova** (light).

Works with all JetBrains IDEs: IntelliJ IDEA, PyCharm, WebStorm, GoLand, Rider, CLion, RubyMine, PhpStorm, etc.

## Install

### Import via Settings

1. Open **Settings** → **Editor** → **Color Scheme**
2. Click the gear icon → **Import Scheme**
3. Select `astral-blackhole.icls` or `astral-supernova.icls`
4. Apply and close

### Manual

Copy the `.icls` files into your IDE's colors directory:

```bash
# Find your config directory (varies by IDE and version)
# Linux
cp editors/intellij/astral-blackhole.icls ~/.config/JetBrains/IntelliJIdea*/colors/
cp editors/intellij/astral-supernova.icls ~/.config/JetBrains/IntelliJIdea*/colors/

# macOS
cp editors/intellij/astral-blackhole.icls ~/Library/Application\ Support/JetBrains/IntelliJIdea*/colors/
cp editors/intellij/astral-supernova.icls ~/Library/Application\ Support/JetBrains/IntelliJIdea*/colors/
```

Restart the IDE, then select the scheme in **Settings** → **Editor** → **Color Scheme**.
