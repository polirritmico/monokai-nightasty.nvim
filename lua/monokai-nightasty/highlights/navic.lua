local M = {}

M.url = "https://github.com/SmiteshP/nvim-navic"

---@type monokai.HighlightsFn
function M.get(c, _)
  return {
    NavicText = { fg = c.fg, bg = c.none },
    NavicSeparator = { fg = c.fg, bg = c.none },
  }
end

return M
