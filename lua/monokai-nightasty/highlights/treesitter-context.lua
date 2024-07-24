local M = {}

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    TreesitterContext = { bg = c.bg_sidebar },
    TreesitterContextBottom = { sp = c.border, underline = true },
    TreesitterContextLineNumber = { fg = c.grey_medium, bg = c.bg_sidebar },
    TreesitterContextLineNumberBottom = { fg = c.yellow, sp = c.border, underline = true },
  }
end

return M
