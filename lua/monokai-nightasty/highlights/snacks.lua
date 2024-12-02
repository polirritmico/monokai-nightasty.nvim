local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
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
  }
end

return M
