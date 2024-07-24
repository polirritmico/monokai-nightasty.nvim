local utils = require("monokai-nightasty.utils")
local M = {}

---@type monokai.HighlightsFn
function M.get(c)
  return {
    -- checkhealt
    helpCommand = { fg = c.blue, bg = c.bg_float }, -- command name/description
    healthError = { fg = c.error },
    healthSuccess = { fg = c.green_alt },
    healthWarning = { fg = c.warning },

    -- diff
    diffAdded = { fg = c.git.add },
    diffChanged = { fg = c.git.change },
    diffFile = { fg = c.fg },
    diffIndexLine = { fg = c.purple },
    diffLine = { fg = c.purple },
    diffNewFile = { fg = c.orange },
    diffOldFile = { fg = c.yellow },
    diffRemoved = { fg = c.git.delete },
    diffSubname = { fg = c.yellow },

    -- gitcommit
    gitcommitHeader = { fg = c.blue },
    gitcommitSelectedFile = { fg = c.yellow },
    gitcommitSummary = { fg = c.fg },
    gitcommitOverflow = { fg = c.magenta },

    --- netrw
    netrwClassify = { fg = c.magenta },
    netrwCmdNote = { fg = c.fg_dark },
    netrwDir = { fg = c.yellow },
    netrwExe = { fg = c.orange },
    netrwHelpCmd = { fg = c.orange, bold = true },
    netrwLink = "netrwClassify",
    netrwList = "netrwDir",
    netrwMarkFile = { fg = c.black, bg = c.orange, bold = true },
    netrwPlain = "netrwCmdNote",
    netrwQuickHelp = { fg = c.fg_dark, italic = true },
    netrwSymLink = { fg = c.blue, italic = true },
    netrwTreeBar = { fg = c.fg_gutter, nocombine = true },
    netrwVersion = { fg = c.orange, italic = true },

    --- terminal-debug
    debugPC = { bg = c.bg_sidebar }, -- highlighting the current line
    debugBreakpoint = { bg = utils.darken(c.info, 0.1), fg = c.info }, -- breakpoint colors
  }
end

return M
