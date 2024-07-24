local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    WhichKey = { fg = c.yellow },
    WhichKeyGroup = { fg = c.magenta },
    WhichKeySeparator = { fg = c.grey_light, italic = false },
    WhichKeyDesc = { fg = c.fg },
    WhichKeyFloat = { bg = c.bg_sidebar },
    WhichKeyBorder = "WhichKeyFloat",
    WhichKeyValue = { fg = c.grey_light },
  }
end

return M
