local M = {}

M.url = "https://github.com/ibhagwan/fzf-lua"

---@type monokai.HighlightsFn
function M.get(c, opts)
  local bg_gutter = opts.hl_styles.floats == "transparent"
      and opts.transparent
      and "#000000" -- Can't use c.none or nil, as fzf wouldn't generate the hl
    or c.grey_darker

  return {
    -- Highlight groups for fzf prompt at top (fzf_colors=true)
    FzfLuaFzfNormal = { fg = c.grey_light, bg = c.bg_float }, -- fzf's fg|bg. FzfLuaNormal
    FzfLuaFzfCursorLine = { fg = c.fg, bg = c.grey_darker }, -- fzf's fg+|bg+. FzfLuaCursorLine
    FzfLuaFzfScrollbar = "PmenuSbar", -- fzf's scrollbar. FzfLuaFzfBorder
    FzfLuaFzfSeparator = { fg = c.fg_gutter }, -- fzf's separator. FzfLuaFzfBorder
    FzfLuaFzfGutter = { bg = bg_gutter }, -- fzf's gutter (hl bg is used)
    FzfLuaFzfInfo = { fg = c.fg_dark }, -- fzf's info. NonText
    FzfLuaFzfPointer = { fg = c.magenta }, -- fzf's pointer (left pointer).
    FzfLuaFzfSpinner = { fg = c.green }, -- fzf's spinner. FzfLuaFzfPointer
    FzfLuaFzfPrompt = { fg = c.blue_alt }, -- fzf's prompt. Special
    FzfLuaFzfQuery = { fg = c.grey_light }, -- fzf's header. FzfLuaNormal

    -- Generals
    FzfLuaNormal = { fg = c.fg_dark, bg = c.bg_float }, -- Main win fg/bg. Normal
    FzfLuaBorder = "FloatBorder", -- Main win border. Normal
    FzfLuaCursor = "IncSearch", -- Builtin preview. Cursor
    FzfLuaCursorLine = "CursorLine", -- Builtin preview.
    FzfLuaDirPart = { fg = c.grey }, -- Path formatters directory (:FzfLua filies formatter=path.dirname_first). Comment
    FzfLuaFilePart = "FzfLuaFzfNormal", -- Path formatters file hl group. Normal

    -- Fzf terminal hls, colors from `vim.api.nvim_get_color_map()`
    FzfLuaHeaderBind = { fg = c.purple }, -- Header keybind.
    FzfLuaHeaderText = { fg = c.orange, italic = true }, -- Header text. Brown1
    FzfLuaPathColNr = { fg = c.blue }, -- Path col nr (lines,qf,lsp,diag).
    FzfLuaPathLineNr = { fg = c.purple }, -- Path line nr (lines,qf,lsp,diag).
    FzfLuaLiveSym = "Special", -- LSP live symbols query match

    -- Provider specific highlights
    FzfLuaBufName = { fg = c.blue_alt }, -- Buffer name (lines).
    FzfLuaBufNr = { fg = c.grey_light }, -- Buffer number (all buffers).
    FzfLuaBufFlagCur = { fg = c.magenta }, -- Buffer line (buffers).
    FzfLuaBufFlagAlt = { fg = c.blue }, -- Buffer line (buffers).
    FzfLuaTabTitle = { fg = c.orange, bold = true }, -- Tab title (tabs).
    FzfLuaTabMarker = { fg = c.green }, -- Tab marker (tabs).
  }
end

return M
