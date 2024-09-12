local M = {}

M.url = "https://github.com/justinmk/vim-sneak"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    Sneak = { fg = c.fg, bg = c.magenta, bold = true }, -- target labels
    SneakLabel = { fg = c.black, bg = c.magenta, bold = true }, -- target labels in label-mode
    SneakScope = { bg = c.bg_visual }, -- sneak region (prefix [count] before `s`)
  }
end

return M
