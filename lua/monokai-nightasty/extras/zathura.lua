local util = require("monokai-nightasty.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local zathura = util.template(
    [[
## name: ${_style_name}
## license: MIT
## author: Eduardo Bray
## upstream: ${_upstream_url}

set notification-error-bg "${red}"
set notification-error-fg "${fg}"
set notification-warning-bg "${yellow}"
set notification-warning-fg "${terminal_black}"
set notification-bg "${bg}"
set notification-fg "${fg}"
set completion-bg "${bg}"
set completion-fg "${fg_dark}"
set completion-group-bg "${bg}"
set completion-group-fg "${fg_dark}"
set completion-highlight-bg "${terminal_black}"
set completion-highlight-fg "${fg}"
set index-bg "${bg}"
set index-fg "${fg}"
set index-active-bg "${terminal_black}"
set index-active-fg "${fg}"
set inputbar-bg "${bg}"
set inputbar-fg "${fg}"
set statusbar-bg "${bg_dark}"
set statusbar-fg "${fg}"
set highlight-color "${yellow}"
set highlight-active-color "${green}"
set default-bg "${bg}"
set default-fg "${fg}"
set render-loading true
set render-loading-fg "${bg}"
set render-loading-bg "${fg}"
#
# Recolor mode settings
# <C-r> to switch modes
#
set recolor-lightcolor "${bg}"
set recolor-darkcolor "${fg}"
]],
    colors
  )
  return zathura
end

return M
