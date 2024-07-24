local M = {}

M.url = "https://github.com/rcarriga/nvim-dap-ui"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    -- Action buttons
    DapUIPlayPause = { fg = c.green, bg = c.bg_statusline },
    DapUIPlayPauseNC = "DapUIPlayPause",
    DapUIRestart = "DapUIPlayPause",
    DapUIStepBack = { fg = c.blue, bg = c.bg_statusline },
    DapUIStepBackNC = "DapUIStepBack",
    DapUIStepInto = "DapUIStepBack",
    DapUIStepIntoNC = "DapUIStepBack",
    DapUIStepOut = "DapUIStepBack",
    DapUIStepOutNC = "DapUIStepBack",
    DapUIStepOver = "DapUIStepBack",
    DapUIStepOverNC = "DapUIStepBack",
    DapUIStop = { fg = c.red, bg = c.bg_statusline },
    DapUIStopNC = "DapUIStop",
    DapUIUnavailable = { fg = c.grey, bg = c.bg_statusline }, -- Disabled buttons like stop when no debugging
    DapUIUnavailableNC = "DapUIUnavailable",

    -- Windows elements
    DapUINormal = "Normal",
    DapUIBreakpointsCurrentLine = { fg = c.green, bold = true },
    DapUIBreakpointsDisabledLine = { fg = c.comment },
    DapUIBreakpointsInfo = { fg = c.green },
    DapUIBreakpointsPath = { fg = c.blue },
    DapUIDecoration = { fg = c.magenta },
    DapUIFloatBorder = "DapUIBreakpointsPath",
    DapUILineNumber = { fg = c.yellow },
    DapUIModifiedValue = { fg = c.blue, bold = true },
    DapUIScope = "DapUIBreakpointsPath",
    DapUISource = { fg = c.orange },
    DapUIStoppedThread = "DapUIBreakpointsPath",
    DapUIThread = "DapUIBreakpointsInfo",
    DapUIType = { fg = c.purple },
    DapUIValue = { fg = c.grey_light, bg = c.none },
    DapUIVariable = { fg = c.fg, bg = c.none },
    DapUIWatchesEmpty = "DapUIDecoration",
    DapUIWatchesError = "DapUIDecoration",
    DapUIWatchesValue = "DapUIThread",
    -- DapStoppedLine = {},
    -- DapUIBreakpointsLine = {},
    -- DapUIBreakpointsLine = "DapUILineNumber",
    -- DapUICurrentFrameName = "DapUIBreakpointsCurrentLine",
    -- DapUIEndofBuffer = "EndofBuffer",
    -- DapUIFloatNormal = "NormalFloat",
    -- DapUIFrameName = "Normal",
    -- DapUIWinSelect = { fg = c.blue, bold = true },
  }
end

return M
