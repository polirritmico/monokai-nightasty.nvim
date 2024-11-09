local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    IblIndent = { fg = c.fg_gutter, nocombine = true },
    IblWhitespace = { fg = c.fg_dark, nocombine = true },
    IblScope = { fg = utils.darken(c.orange, 0.6), nocombine = true },
  }
end

return M
