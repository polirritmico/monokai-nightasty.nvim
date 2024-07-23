local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type monokai.HighlightsFn
function M.get(c, _)
  return {
    NoiceLspProgressTitle = { fg = c.orange, italic = true }, -- Progress operation text
    NoiceLspProgressSpinner = { fg = c.green }, -- Spinner and ticket
    NoiceFormatProgressDone = { fg = c.fg, bg = c.orange, bold = true }, -- bg = Bar color, fg = text above
    NoiceMini = { bg = c.bg_float },
  }
end

return M
