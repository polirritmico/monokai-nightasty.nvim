local M = {}

M.url = "https://github.com/stevearc/aerial.nvim"

---@type monokai.HighlightsFn
function M.get(c, _)
  return {
    AerialNormal = { fg = c.fg, bg = c.none },
    AerialGuide = { fg = c.fg_gutter },
    AerialLine = "LspInlayHint",
  }
end

return M
