local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/echasnovski/mini.indentscope"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    MiniIndentscopeSymbol = { fg = utils.darken(c.orange, 0.6), nocombine = true },
  }
end

return M
