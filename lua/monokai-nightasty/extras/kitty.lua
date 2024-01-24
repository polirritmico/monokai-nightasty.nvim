local util = require("monokai-nightasty.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local kitty = util.template(
    [[
# vim:ft=kitty

## name: ${_style_name}
## license: MIT
## author: Eduardo Bray
## upstream: ${_upstream_url}


background ${bg}
foreground ${fg_dark}
selection_background ${orange}
selection_foreground ${black}
url_color ${green_alt}
cursor ${fg}
cursor_text_color ${bg}

# Tabs
active_tab_background ${green}
active_tab_foreground ${bg_dark}
inactive_tab_background ${grey_darker}
inactive_tab_foreground ${fg_dark}
tab_bar_background ${charcoal_light}

# Windows
active_border_color ${blue}
inactive_border_color ${bg_highlight}

# normal
color0 ${black}
color1 ${magenta}
color2 ${green}
color3 ${yellow}
color4 ${blue_alt}
color5 ${red}
color6 ${blue}
color7 ${fg_dark}

# bright
color8 ${terminal_black}
color9 ${red}
color10 ${green}
color11 ${yellow}
color12 ${blue_alt}
color13 ${magenta}
color14 ${blue}
color15 ${fg}

# extended colors
color16 ${orange}
color17 ${red}
]],
    colors
  )
  return kitty
end

return M
