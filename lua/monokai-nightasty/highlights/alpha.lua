local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@type monokai.HighlightsFn
function M.get(c, opts)
  return {
    AlphaButtons = { fg = c.magenta },
    AlphaFooter = { fg = c.comment, italic = opts.italics },
    AlphaHeader = { fg = c.orange },
    AlphaHeaderLabel = { fg = c.magenta },
    AlphaShortcut = { fg = c.purple },
  }
end

return M
