local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    -- General
    DashboardHeader = { fg = c.orange },
    DashboardFooter = { fg = c.comment, italic = true },
    -- Doom theme
    DashboardDesc = { fg = c.magenta },
    DashboardIcon = { fg = c.fg },
    DashboardKey = { fg = c.purple },
    -- Hyper theme
    DashboardFiles = { fg = c.grey_light },
    DashboardMruIcon = "DashboardIcon",
    DashboardMruTitle = { fg = c.magenta, bold = true },
    DashboardProjectIcon = { fg = c.blue },
    DashboardProjectTitle = "DashboardIcon",
    DashboardProjectTitleIcon = "DashboardIcon",
    -- DashboardShortCutIcon = { fg = c.purple },
    DashboardShortCut = "DashboardKey",
  }
end

return M
