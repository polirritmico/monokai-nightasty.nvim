local M = {}

M.url = "https://github.com/ggandor/leap.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    LeapMatch = { fg = c.fg, bg = c.magenta, bold = true }, -- search matches (traversal)
    LeapLabel = { fg = c.black, bg = c.magenta, bold = true }, -- target labels
    LeapBackgrop = { fg = c.grey_medium }, -- muted area
  }
end

return M
