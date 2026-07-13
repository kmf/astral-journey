-- astral.nvim — warm star-glow falling into deep space
-- https://github.com/kmf/astral-journey

local M = {}

M.palettes = {
  ["astral-blackhole"] = {
    bg         = "#0d0f1e",
    bg_soft    = "#14172a",
    bg_hi      = "#1c2038",
    border     = "#2a2f4d",
    fg         = "#ebe8d2",
    fg_alt     = "#fdfbe4",
    fg_muted   = "#8b90bd",
    yellow     = "#ffcc66",
    orange     = "#ff9933",
    red        = "#ff6e6e",
    magenta    = "#cc99cc",
    violet     = "#b78ae0",
    blue       = "#6a97ea",
    teal       = "#38a8d0",
    green      = "#7ed4a3",
    br_red     = "#ff8a80",
    br_green   = "#98e0ba",
    br_yellow  = "#ffff99",
    br_blue    = "#99ccff",
    br_magenta = "#d9a9e0",
    br_teal    = "#5cc0e0",
    br_orange  = "#ffcc99",
    br_violet  = "#99ccff",
    diff_add_bg = "#1d2b31",
    diff_del_bg = "#2f1c29",
    diff_chg_bg = "#2f2928",
  },
  ["astral-supernova"] = {
    bg         = "#fdf9ec",
    bg_soft    = "#f6f0dc",
    bg_hi      = "#efe8cf",
    border     = "#e2d8ba",
    fg         = "#292140",
    fg_alt     = "#1c1730",
    fg_muted   = "#5d5c78",
    yellow     = "#9d650c",
    orange     = "#b65608",
    red        = "#d62e3f",
    magenta    = "#a34fa8",
    violet     = "#7b4fc0",
    blue       = "#2f5fc7",
    teal       = "#006699",
    green      = "#1d8156",
    br_red     = "#c22f3e",
    br_green   = "#187a4f",
    br_yellow  = "#9c6e00",
    br_blue    = "#2551ad",
    br_magenta = "#8f4494",
    br_teal    = "#005982",
    br_orange  = "#a65f33",
    br_violet  = "#2f6fd0",
    diff_add_bg = "#dee9d8",
    diff_del_bg = "#f8ded5",
    diff_chg_bg = "#f6e8cd",
  },
}

function M.setup(opts)
  opts = opts or {}
  M.variant = opts.variant or "astral-blackhole"
end

function M.load()
  local variant = M.variant or "astral-blackhole"
  local p = M.palettes[variant]
  if not p then
    vim.notify("astral: unknown variant '" .. variant .. "'", vim.log.levels.ERROR)
    return
  end

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.o.background = variant == "astral-supernova" and "light" or "dark"
  vim.g.colors_name = variant

  local function hi(group, opts_hi)
    vim.api.nvim_set_hl(0, group, opts_hi)
  end

  -- ── UI ─────────────────────────────────────────────
  hi("Normal",       { fg = p.fg, bg = p.bg })
  hi("NormalFloat",  { fg = p.fg, bg = p.bg_soft })
  hi("NormalNC",     { fg = p.fg, bg = p.bg })
  hi("FloatBorder",  { fg = p.border, bg = p.bg_soft })
  hi("FloatTitle",   { fg = p.yellow, bg = p.bg_soft, bold = true })

  hi("Cursor",       { fg = p.bg, bg = p.yellow })
  hi("CursorLine",   { bg = p.bg_soft })
  hi("CursorColumn", { bg = p.bg_soft })
  hi("CursorLineNr", { fg = p.yellow, bold = true })
  hi("LineNr",       { fg = p.border })
  hi("SignColumn",   { bg = p.bg })

  hi("Visual",       { bg = p.bg_hi })
  hi("VisualNOS",    { bg = p.bg_hi })

  hi("Search",       { fg = p.bg, bg = p.yellow })
  hi("IncSearch",    { fg = p.bg, bg = p.orange })
  hi("CurSearch",    { fg = p.bg, bg = p.orange, bold = true })
  hi("Substitute",   { fg = p.bg, bg = p.red })

  hi("Pmenu",        { fg = p.fg, bg = p.bg_soft })
  hi("PmenuSel",     { fg = p.bg, bg = p.yellow })
  hi("PmenuSbar",    { bg = p.bg_hi })
  hi("PmenuThumb",   { bg = p.border })

  hi("StatusLine",   { fg = p.fg, bg = p.bg_soft })
  hi("StatusLineNC", { fg = p.fg_muted, bg = p.bg_soft })
  hi("TabLine",      { fg = p.fg_muted, bg = p.bg_soft })
  hi("TabLineFill",  { bg = p.bg })
  hi("TabLineSel",   { fg = p.yellow, bg = p.bg_hi, bold = true })
  hi("WinBar",       { fg = p.fg, bg = p.bg })
  hi("WinBarNC",     { fg = p.fg_muted, bg = p.bg })
  hi("WinSeparator", { fg = p.border })

  hi("Folded",       { fg = p.fg_muted, bg = p.bg_soft })
  hi("FoldColumn",   { fg = p.border })

  hi("MatchParen",   { fg = p.yellow, bg = p.bg_hi, bold = true })

  hi("Directory",    { fg = p.blue })
  hi("Title",        { fg = p.yellow, bold = true })
  hi("Question",     { fg = p.blue })
  hi("MoreMsg",      { fg = p.teal })
  hi("WarningMsg",   { fg = p.orange })
  hi("ErrorMsg",     { fg = p.red, bold = true })

  hi("NonText",      { fg = p.border })
  hi("Whitespace",   { fg = p.border })
  hi("SpecialKey",   { fg = p.border })
  hi("Conceal",      { fg = p.fg_muted })

  -- ── Diff ───────────────────────────────────────────
  hi("DiffAdd",      { bg = p.diff_add_bg })
  hi("DiffChange",   { bg = p.diff_chg_bg })
  hi("DiffDelete",   { fg = p.red, bg = p.diff_del_bg })
  hi("DiffText",     { fg = p.fg_alt, bg = p.diff_chg_bg, bold = true })
  hi("Added",        { fg = p.green })
  hi("Changed",      { fg = p.yellow })
  hi("Removed",      { fg = p.red })

  -- ── Diagnostics ────────────────────────────────────
  hi("DiagnosticError",        { fg = p.red })
  hi("DiagnosticWarn",         { fg = p.orange })
  hi("DiagnosticInfo",         { fg = p.blue })
  hi("DiagnosticHint",         { fg = p.teal })
  hi("DiagnosticOk",           { fg = p.green })
  hi("DiagnosticUnderlineError", { undercurl = true, sp = p.red })
  hi("DiagnosticUnderlineWarn",  { undercurl = true, sp = p.orange })
  hi("DiagnosticUnderlineInfo",  { undercurl = true, sp = p.blue })
  hi("DiagnosticUnderlineHint",  { undercurl = true, sp = p.teal })
  hi("DiagnosticVirtualTextError", { fg = p.red, bg = p.diff_del_bg })
  hi("DiagnosticVirtualTextWarn",  { fg = p.orange, bg = p.diff_chg_bg })
  hi("DiagnosticVirtualTextInfo",  { fg = p.blue, bg = p.bg_soft })
  hi("DiagnosticVirtualTextHint",  { fg = p.teal, bg = p.bg_soft })

  -- ── Syntax (generic Vim) ───────────────────────────
  hi("Comment",        { fg = p.fg_muted, italic = true })
  hi("Constant",       { fg = p.orange })
  hi("String",         { fg = p.green })
  hi("Character",      { fg = p.green })
  hi("Number",         { fg = p.teal })
  hi("Boolean",        { fg = p.orange })
  hi("Float",          { fg = p.teal })
  hi("Identifier",     { fg = p.fg })
  hi("Function",       { fg = p.blue })
  hi("Statement",      { fg = p.red })
  hi("Conditional",    { fg = p.red })
  hi("Repeat",         { fg = p.red })
  hi("Label",          { fg = p.yellow })
  hi("Operator",       { fg = p.fg })
  hi("Keyword",        { fg = p.red })
  hi("Exception",      { fg = p.red })
  hi("PreProc",        { fg = p.magenta })
  hi("Include",        { fg = p.red })
  hi("Define",         { fg = p.magenta })
  hi("Macro",          { fg = p.magenta })
  hi("PreCondit",      { fg = p.magenta })
  hi("Type",           { fg = p.violet })
  hi("StorageClass",   { fg = p.red })
  hi("Structure",      { fg = p.violet })
  hi("Typedef",        { fg = p.violet })
  hi("Special",        { fg = p.orange })
  hi("SpecialChar",    { fg = p.magenta })
  hi("Tag",            { fg = p.yellow })
  hi("Delimiter",      { fg = p.fg })
  hi("SpecialComment", { fg = p.fg_muted, bold = true })
  hi("Debug",          { fg = p.orange })
  hi("Underlined",     { fg = p.blue, underline = true })
  hi("Bold",           { bold = true })
  hi("Italic",         { italic = true })
  hi("Error",          { fg = p.red })
  hi("Todo",           { fg = p.bg, bg = p.yellow, bold = true })

  -- ── Tree-sitter ────────────────────────────────────
  hi("@comment",              { link = "Comment" })
  hi("@string",               { link = "String" })
  hi("@string.escape",        { fg = p.magenta })
  hi("@string.regex",         { fg = p.magenta })
  hi("@string.special",       { fg = p.magenta })
  hi("@character",            { link = "Character" })
  hi("@number",               { link = "Number" })
  hi("@boolean",              { link = "Boolean" })
  hi("@float",                { link = "Float" })
  hi("@function",             { fg = p.blue })
  hi("@function.builtin",     { fg = p.blue, italic = true })
  hi("@function.call",        { fg = p.blue })
  hi("@function.macro",       { fg = p.magenta })
  hi("@method",               { fg = p.blue })
  hi("@method.call",          { fg = p.blue })
  hi("@constructor",          { fg = p.violet })
  hi("@parameter",            { fg = p.orange, italic = true })
  hi("@keyword",              { fg = p.red })
  hi("@keyword.function",     { fg = p.red })
  hi("@keyword.operator",     { fg = p.red })
  hi("@keyword.return",       { fg = p.red })
  hi("@conditional",          { fg = p.red })
  hi("@repeat",               { fg = p.red })
  hi("@label",                { fg = p.yellow })
  hi("@operator",             { fg = p.fg })
  hi("@exception",            { fg = p.red })
  hi("@variable",             { fg = p.fg })
  hi("@variable.builtin",     { fg = p.orange, italic = true })
  hi("@type",                 { fg = p.violet })
  hi("@type.builtin",         { fg = p.violet, italic = true })
  hi("@type.definition",      { fg = p.violet })
  hi("@type.qualifier",       { fg = p.red })
  hi("@namespace",            { fg = p.violet })
  hi("@include",              { fg = p.red })
  hi("@field",                { fg = p.fg })
  hi("@property",             { fg = p.fg })
  hi("@constant",             { fg = p.orange })
  hi("@constant.builtin",     { fg = p.orange, italic = true })
  hi("@constant.macro",       { fg = p.magenta })
  hi("@tag",                  { fg = p.red })
  hi("@tag.attribute",        { fg = p.yellow })
  hi("@tag.delimiter",        { fg = p.fg_muted })
  hi("@punctuation.bracket",  { fg = p.fg })
  hi("@punctuation.delimiter",{ fg = p.fg })
  hi("@punctuation.special",  { fg = p.magenta })
  hi("@text.title",           { fg = p.yellow, bold = true })
  hi("@text.literal",         { fg = p.green })
  hi("@text.uri",             { fg = p.blue, underline = true })
  hi("@text.emphasis",        { italic = true })
  hi("@text.strong",          { bold = true })
  hi("@text.todo",            { fg = p.bg, bg = p.yellow, bold = true })
  hi("@text.note",            { fg = p.blue })
  hi("@text.warning",         { fg = p.orange })
  hi("@text.danger",          { fg = p.red })
  hi("@text.diff.add",        { fg = p.green })
  hi("@text.diff.delete",     { fg = p.red })

  -- ── LSP semantic tokens ────────────────────────────
  hi("@lsp.type.comment",     { link = "Comment" })
  hi("@lsp.type.keyword",     { link = "Keyword" })
  hi("@lsp.type.string",      { link = "String" })
  hi("@lsp.type.number",      { link = "Number" })
  hi("@lsp.type.type",        { link = "Type" })
  hi("@lsp.type.function",    { link = "Function" })
  hi("@lsp.type.method",      { fg = p.blue })
  hi("@lsp.type.property",    { fg = p.fg })
  hi("@lsp.type.variable",    { fg = p.fg })
  hi("@lsp.type.parameter",   { fg = p.orange, italic = true })
  hi("@lsp.type.namespace",   { fg = p.violet })
  hi("@lsp.type.enum",        { fg = p.violet })
  hi("@lsp.type.enumMember",  { fg = p.orange })
  hi("@lsp.type.struct",      { fg = p.violet })
  hi("@lsp.type.interface",   { fg = p.violet })
  hi("@lsp.type.decorator",   { fg = p.magenta })
  hi("@lsp.type.macro",       { fg = p.magenta })

  -- ── Git signs (gitsigns.nvim) ──────────────────────
  hi("GitSignsAdd",          { fg = p.green })
  hi("GitSignsChange",       { fg = p.yellow })
  hi("GitSignsDelete",       { fg = p.red })
  hi("GitSignsCurrentLineBlame", { fg = p.fg_muted, italic = true })

  -- ── Telescope ──────────────────────────────────────
  hi("TelescopeBorder",       { fg = p.border, bg = p.bg })
  hi("TelescopeTitle",        { fg = p.yellow, bold = true })
  hi("TelescopePromptBorder", { fg = p.yellow })
  hi("TelescopePromptTitle",  { fg = p.bg, bg = p.yellow, bold = true })
  hi("TelescopePromptPrefix", { fg = p.yellow })
  hi("TelescopeSelection",    { bg = p.bg_hi })
  hi("TelescopeMatching",     { fg = p.blue, bold = true })
  hi("TelescopeResultsNormal",{ fg = p.fg })
  -- directory/path segment (e.g. path_display = "filename_first") — keep it
  -- readable rather than falling back to the dim, italic Comment default
  hi("TelescopeResultsComment",       { fg = p.fg_muted })
  hi("TelescopeResultsSpecialComment",{ fg = p.fg_muted })
  hi("TelescopePathSeparator",        { fg = p.fg_muted })

  -- ── snacks.picker (LazyVim default) ────────────────
  hi("SnacksPickerFile",      { fg = p.fg })
  hi("SnacksPickerDir",       { fg = p.fg_muted }) -- readable now that fg_muted was bumped
  hi("SnacksPickerPathHidden",{ fg = p.border })
  hi("SnacksPickerPathIgnored",{ fg = p.border })
  hi("SnacksPickerMatch",     { fg = p.blue, bold = true })
  hi("SnacksPickerRow",       { fg = p.fg_muted })
  hi("SnacksPickerCol",       { fg = p.fg_muted })

  -- ── fzf-lua ────────────────────────────────────────
  hi("FzfLuaFilePart",        { fg = p.fg })
  hi("FzfLuaDirPart",         { fg = p.fg_muted })   -- readable now that fg_muted was bumped
  hi("FzfLuaPathColNr",       { fg = p.teal })
  hi("FzfLuaPathLineNr",      { fg = p.teal })

  -- ── nvim-cmp ───────────────────────────────────────
  hi("CmpItemAbbr",           { fg = p.fg })
  hi("CmpItemAbbrMatch",      { fg = p.blue, bold = true })
  hi("CmpItemAbbrMatchFuzzy", { fg = p.blue })
  hi("CmpItemAbbrDeprecated", { fg = p.fg_muted, strikethrough = true })
  hi("CmpItemKindFunction",   { fg = p.blue })
  hi("CmpItemKindMethod",     { fg = p.blue })
  hi("CmpItemKindVariable",   { fg = p.fg })
  hi("CmpItemKindKeyword",    { fg = p.red })
  hi("CmpItemKindText",       { fg = p.fg_muted })
  hi("CmpItemKindSnippet",    { fg = p.yellow })
  hi("CmpItemKindClass",      { fg = p.violet })
  hi("CmpItemKindInterface",  { fg = p.violet })
  hi("CmpItemKindModule",     { fg = p.violet })
  hi("CmpItemKindProperty",   { fg = p.fg })
  hi("CmpItemKindUnit",       { fg = p.teal })
  hi("CmpItemKindValue",      { fg = p.teal })
  hi("CmpItemKindEnum",       { fg = p.violet })
  hi("CmpItemKindConstant",   { fg = p.orange })
  hi("CmpItemKindField",      { fg = p.fg })

  -- ── Indent-blankline ───────────────────────────────
  hi("IblIndent",  { fg = p.border })
  hi("IblScope",   { fg = p.yellow })

  -- ── Which-key ──────────────────────────────────────
  hi("WhichKey",          { fg = p.yellow })
  hi("WhichKeyGroup",     { fg = p.blue })
  hi("WhichKeyDesc",      { fg = p.fg })
  hi("WhichKeySeparator", { fg = p.fg_muted })

  -- ── Notify ─────────────────────────────────────────
  hi("NotifyERRORBorder", { fg = p.red })
  hi("NotifyERRORTitle",  { fg = p.red })
  hi("NotifyERRORIcon",   { fg = p.red })
  hi("NotifyWARNBorder",  { fg = p.orange })
  hi("NotifyWARNTitle",   { fg = p.orange })
  hi("NotifyWARNIcon",    { fg = p.orange })
  hi("NotifyINFOBorder",  { fg = p.blue })
  hi("NotifyINFOTitle",   { fg = p.blue })
  hi("NotifyINFOIcon",    { fg = p.blue })

  -- ── Terminal ANSI ──────────────────────────────────
  vim.g.terminal_color_0  = p.bg
  vim.g.terminal_color_1  = p.red
  vim.g.terminal_color_2  = p.green
  vim.g.terminal_color_3  = p.yellow
  vim.g.terminal_color_4  = p.blue
  vim.g.terminal_color_5  = p.magenta
  vim.g.terminal_color_6  = p.teal
  vim.g.terminal_color_7  = p.fg
  vim.g.terminal_color_8  = p.border
  vim.g.terminal_color_9  = p.br_red
  vim.g.terminal_color_10 = p.br_green
  vim.g.terminal_color_11 = p.br_yellow
  vim.g.terminal_color_12 = p.br_blue
  vim.g.terminal_color_13 = p.br_magenta
  vim.g.terminal_color_14 = p.br_teal
  vim.g.terminal_color_15 = p.fg_alt
end

return M
