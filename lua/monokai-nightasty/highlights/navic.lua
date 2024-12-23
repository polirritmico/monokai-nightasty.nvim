local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/SmiteshP/nvim-navic"

---@type monokai.HighlightsFn
function M.get(c)
  local ret = {
    NavicText = { fg = c.fg, bg = c.none },
    NavicSeparator = { fg = c.fg, bg = c.none },
  }
  utils.generate_kinds(ret, "NavicIcons%s")
  return ret
end

return M
