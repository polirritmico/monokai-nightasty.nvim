local M = {}

M.url = "https://github.com/stevearc/aerial.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  local ret = {
    AerialNormal = { fg = c.fg, bg = c.none },
    AerialGuide = { fg = c.fg_gutter },
    AerialLine = "LspInlayHint",
  }
  require("monokai-nightasty.highlights.kinds").kinds(ret, "Aerial%sIcon")
  return ret
end

return M
