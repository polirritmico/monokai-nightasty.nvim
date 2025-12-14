local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@type monokai.HighlightsFn
function M.get(c, opts)
  local yellow = opts.style == "light" and c.yellow or c.yellow_alt
  local ret = {
    SnacksDashboardDesc = { fg = c.magenta }, -- Entry text ("Special")
    SnacksDashboardDir = { fg = c.grey }, -- Directory items ("NonText")
    SnacksDashboardFile = { fg = c.grey_lighter }, -- File items ("Special")
    SnacksDashboardFooter = { fg = c.comment, italic = true }, -- Footer text ("Title")
    SnacksDashboardHeader = { fg = c.orange }, -- Header text ("Title")
    SnacksDashboardIcon = { fg = c.fg_dark }, -- Icons ("Special")
    SnacksDashboardKey = { fg = c.purple }, -- Keybind text ("Number")
    SnacksDashboardNormal = { fg = c.fg_dark }, -- Normal for the dashboard ("Normal")
    SnacksDashboardSpecial = { fg = c.grey_light, italic = true }, -- Special elements ("Special")
    SnacksDashboardTitle = { fg = c.magenta }, -- Title text ("Title")

    SnacksNotifierTitleDebug = { fg = yellow }, -- Title for Debug notification
    SnacksNotifierIconDebug = "SnacksNotifierTitleDebug", -- Icon for Debug notification
    SnacksNotifierBorderDebug = "SnacksNotifierTitleDebug", -- Border for Debug notification
    SnacksNotifierTitleTrace = { fg = c.fg_dark }, -- Title for Trace notification
    SnacksNotifierIconTrace = "SnacksNotifierTitleTrace", -- Icon for Trace notification
    SnacksNotifierBorderTrace = "SnacksNotifierTitleTrace", -- Border for Trace notification
    SnacksNotifierHistoryDateTime = { fg = c.grey_light }, -- Dates in entries

    SnacksPickerDir = { fg = c.grey }, -- Directory section of the entries
    SnacksPickerInputBorder = { fg = c.magenta, bg = c.bg_float }, -- Separator line below search
    SnacksPickerListCursorLine = { bg = c.bg_statusline }, -- Current line highlight
    SnacksPickerPrompt = { fg = c.blue_alt }, -- The search prompt character color
    SnacksPickerSelected = { fg = c.magenta }, -- Left circle icon color
  }

  return ret
end

return M
