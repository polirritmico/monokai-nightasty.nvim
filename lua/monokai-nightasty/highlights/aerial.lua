local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/stevearc/aerial.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  local ret = {
    AerialNormal = { fg = c.fg, bg = c.none },
    AerialGuide = { fg = c.fg_gutter },
    AerialLine = "LspInlayHint",
  }
  utils.generate_kinds(ret, "Aerial%sIcon")
  return ret
end

return M
