local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type monokai.HighlightsFn
function M.get(c, _)
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
    DashboardMruIcon = { link = "DashboardIcon" },
    DashboardMruTitle = { fg = c.magenta, bold = true },
    DashboardProjectIcon = { fg = c.blue },
    DashboardProjectTitle = { link = "DashboardIcon" },
    DashboardProjectTitleIcon = { link = "DashboardIcon" },
    -- DashboardShortCutIcon = { fg = c.purple },
    DashboardShortCut = { link = "DashboardKey" },
  }
end

return M
