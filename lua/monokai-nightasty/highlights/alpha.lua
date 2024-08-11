local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    AlphaButtons = { fg = c.magenta },
    AlphaFooter = { fg = c.comment, italic = true },
    AlphaHeader = { fg = c.orange },
    AlphaHeaderLabel = { fg = c.magenta },
    AlphaShortcut = { fg = c.purple },
  }
end

return M
