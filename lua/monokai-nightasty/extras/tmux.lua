local util = require("monokai-nightasty.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tmux = util.template(
    [[
## name: ${_style_name}
## license: MIT
## author: Eduardo Bray
## upstream: ${_upstream_url}

tm_bg="${grey_darker}"
tm_fg="${grey_light}"
tm_bg_highlight="${charcoal_light}"
tm_green="${green}"
tm_orange="${orange}"
tm_black="${black}"
tm_border="${border}"

set -g mode-style "fg=$tm_green,bg=$tm_bg"

set -g message-style "fg=$tm_orange,bg=$tm_bg_highlight"
set -g message-command-style "fg=$tm_green,bg=$tm_bg"

set -g pane-border-style "fg=$tm_bg"
set -g pane-active-border-style "fg=$tm_border"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=$tm_green,bg=$tm_bg_highlight"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

tm_session="#[fg=$tm_black,bg=$tm_green,bold] #S"
tm_left_arrow="#[fg=$tm_green,bg=$tm_bg_highlight]"
tm_clock_24="#[fg=$tm_bg,bg=$tm_bg_highlight]#[fg=$tm_green,bg=$tm_bg]  %H:%M"
tm_clock_12="#[fg=$tm_bg,bg=$tm_bg_highlight]#[fg=$tm_green,bg=$tm_bg]  %I:%M %p"
tm_host="#[fg=$tm_black,bg=$tm_green,bold] #h "
tm_right_green_to_grey_sep="#[fg=$tm_bg_highlight,bg=$tm_bg]#[fg=$tm_green,bg=$tm_bg_highlight]"

set -g status-left "$tm_session $tm_left_arrow"
set -g status-right "$tm_clock_24 $tm_right_green_to_grey_sep$tm_host"
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "12" ]' {
    set -g status-right "$tm_clock_12 $tm_right_green_to_grey_sep$tm_host"
}

setw -g window-status-activity-style "underscore,fg=$tm_fg,bg=$tm_bg_highlight"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=$tm_fg,bg=$tm_bg_highlight"

tm_win_inact_sep="#[fg=$tm_bg_highlight,bg=$tm_bg_highlight]"
tm_win_inactive="#[default]#I#W"

tm_win_active="#[fg=$tm_green,bg=$tm_bg,bold] #I#W "
tm_win_act_sep="#[fg=$tm_bg_highlight,bg=$tm_bg]"
tm_win_act_sep_end="#[fg=$tm_bg,bg=$tm_bg_highlight,nobold]"

setw -g window-status-format "$tm_win_inact_sep$tm_win_inactive$tm_win_inact_sep"
setw -g window-status-current-format "$tm_win_act_sep$tm_win_active$tm_win_act_sep_end"
]],
    colors
  )
  return tmux
end

return M
