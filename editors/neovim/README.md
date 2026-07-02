# astral.nvim

A Neovim colorscheme with full Tree-sitter, LSP semantic token, and plugin support — warm star-glow falling into deep space.

## Install

### lazy.nvim

```lua
{
  "kmf/astral-journey",
  lazy = false,
  priority = 1000,
  config = function()
    require("astral").setup({ variant = "astral-blackhole" })
    vim.cmd.colorscheme("astral-blackhole")
  end,
}
```

### packer

```lua
use {
  "kmf/astral-journey",
  config = function()
    require("astral").setup({ variant = "astral-blackhole" })
    vim.cmd.colorscheme("astral-blackhole")
  end,
}
```

### Manual

```bash
mkdir -p ~/.local/share/nvim/site/pack/astral/start
cp -r editors/neovim ~/.local/share/nvim/site/pack/astral/start/astral
```

## Usage

```vim
:colorscheme astral-blackhole
:colorscheme astral-supernova
```

## Configuration

```lua
require("astral").setup({
  variant = "astral-blackhole",  -- or "astral-supernova"
})
```

## Plugin support

Tested with and provides highlight groups for:

- **Tree-sitter** — full `@capture` group coverage
- **LSP semantic tokens** — `@lsp.type.*` groups
- **Telescope** — borders, titles, matches, selection
- **nvim-cmp** — item kinds, match highlighting
- **gitsigns.nvim** — add/change/delete signs, blame
- **indent-blankline.nvim** — indent guides, scope highlights
- **which-key.nvim** — keys, groups, descriptions
- **nvim-notify** — error/warn/info borders and icons

## Lualine / statusline

Use the palette directly:

```lua
local p = require("astral").palettes["astral-blackhole"]
-- p.yellow, p.blue, p.red, etc.
```

## Switching on the fly

```lua
vim.keymap.set("n", "<leader>ta", function()
  local astral = require("astral")
  local next_variant = astral.variant == "astral-blackhole" and "astral-supernova" or "astral-blackhole"
  astral.setup({ variant = next_variant })
  astral.load()
  vim.notify("astral → " .. next_variant)
end, { desc = "Toggle astral variant" })
```
