#!/usr/bin/env bash

# Monokai colors for Tmux

tmux_bg="#313131"
tmux_fg="#e8e8e8"
tmux_bg_highlight="#444444"
tmux_green="#a4e400"
tmux_orange="#ff9700"


set -g mode-style "fg=$tmux_green,bg=$tmux_bg"

set -g message-style "fg=$tmux_orange,bg=$tmux_bg_highlight"
set -g message-command-style "fg=$tmux_green,bg=$tmux_bg"

set -g pane-border-style "fg=$tmux_bg"
set -g pane-active-border-style "fg=$tmux_fg"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=$tmux_green,bg=$tmux_bg_highlight"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=$tmux_bg,bg=$tmux_green,bold] #S #[fg=$tmux_green,bg=$tmux_bg_highlight,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=$tmux_bg_highlight,bg=$tmux_bg_highlight,nobold,nounderscore,noitalics]#[fg=$tmux_green,bg=$tmux_bg_highlight] #{prefix_highlight} #[fg=$tmux_bg,bg=$tmux_bg_highlight,nobold,nounderscore,noitalics]#[fg=$tmux_green,bg=$tmux_bg]  %H:%M #[fg=$tmux_bg_highlight,bg=$tmux_bg,nobold,nounderscore,noitalics]#[fg=$tmux_green,bg=$tmux_bg_highlight,nobold,nounderscore,noitalics]#[fg=$tmux_bg,bg=$tmux_green,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "12" ]' {
    set -g status-right "#[fg=$tmux_bg_highlight,bg=$tmux_bg_highlight,nobold,nounderscore,noitalics]#[fg=$tmux_green,bg=$tmux_bg_highlight] #{prefix_highlight} #[fg=$tmux_bg,bg=$tmux_bg_highlight,nobold,nounderscore,noitalics]#[fg=$tmux_green,bg=$tmux_bg]  %I:%M %p #[fg=$tmux_bg_highlight,bg=$tmux_bg,nobold,nounderscore,noitalics]#[fg=$tmux_green,bg=$tmux_bg_highlight,nobold,nounderscore,noitalics]#[fg=$tmux_bg,bg=$tmux_green,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=$tmux_fg,bg=$tmux_bg_highlight"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=$tmux_fg,bg=$tmux_bg_highlight"
setw -g window-status-format "#[fg=$tmux_bg_highlight,bg=$tmux_bg_highlight,nobold,nounderscore,noitalics]#[default]#I  #W#[fg=$tmux_bg_highlight,bg=$tmux_bg_highlight,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=$tmux_bg_highlight,bg=$tmux_bg,nobold,nounderscore,noitalics]#[fg=$tmux_green,bg=$tmux_bg,bold] #I  #W #[fg=$tmux_bg,bg=$tmux_bg_highlight,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#e0af68]#[bg=$tmux_bg_highlight]#[fg=$tmux_bg_highlight]#[bg=#e0af68]"
set -g @prefix_highlight_output_suffix ""
