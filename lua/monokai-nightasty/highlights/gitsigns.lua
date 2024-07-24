local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    GitSignsCurrentLineBlame = { fg = c.info, bg = c.bg_popup, italic = true },
    GitSignsAdd = "diffAdded",
    GitSignsChange = "diffChanged",
    GitSignsDelete = "diffRemoved",
    GitSignsAddInline = { sp = c.green_alt, undercurl = true },
    GitSignsChangeInline = { sp = c.blue_alt, undercurl = true },
    GitSignsDeleteInline = { fg = c.diff.delete, bg = c.magenta },
  }
end

return M
