local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/folke/trouble.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    TroubleCode = { fg = c.error },
    TroubleCount = { fg = c.fg, bg = c.bg, bold = true },
    TroubleDiagnosticsBasename = "TroubleLspFilename",
    TroubleDirectory = { fg = c.fg_float },
    TroubleIconDirectory = "TroubleLspFilename",
    TroubleIndentFoldClosed = { fg = c.fg },
    TroubleLspCount = "TroubleCount",
    TroubleLspFilename = { fg = c.blue },
    TroubleLspSymbolName = { fg = utils.darken(c.orange, 0.85) },
    TroublePos = { fg = c.comment },
    TroubleText = { fg = c.fg_dark },
  }
end

return M
