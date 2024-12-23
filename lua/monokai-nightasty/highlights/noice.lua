local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  local ret = {
    NoiceFormatEvent = { fg = c.grey }, -- Event name after the time
    NoiceFormatKind = { fg = c.grey_light }, -- Event "name extension" after the time
    NoiceFormatProgressDone = { fg = c.fg, bg = c.orange, bold = true }, -- bg = Bar color, fg = text above
    NoiceLspProgressSpinner = { fg = c.green }, -- Spinner and ticket
    NoiceLspProgressTitle = { fg = c.orange, italic = true }, -- Progress operation text
    NoiceMini = { bg = c.bg_float },
  }
  utils.generate_kinds(ret, "NoiceCompletionItemKind%s")
  return ret
end

return M
