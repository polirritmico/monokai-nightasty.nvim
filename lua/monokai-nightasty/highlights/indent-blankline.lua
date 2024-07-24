local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    IblIndent = { fg = c.fg_gutter, nocombine = true },
    IblWhitespace = { fg = c.fg_dark, nocombine = true },
    IblScope = { fg = c.blue, nocombine = true },
  }
end

return M
