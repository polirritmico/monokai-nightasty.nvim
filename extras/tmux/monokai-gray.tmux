#!/usr/bin/env bash

# Monokai colors for Tmux

set -g mode-style "fg=#a4e400,bg=#313131"

set -g message-style "fg=#a4e400,bg=#313131"
set -g message-command-style "fg=#a4e400,bg=#313131"

set -g pane-border-style "fg=#313131"
set -g pane-active-border-style "fg=#e8e8e8"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#a4e400,bg=#444444"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#313131,bg=#a4e400,bold] #S #[fg=#a4e400,bg=#444444,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#444444,bg=#444444,nobold,nounderscore,noitalics]#[fg=#a4e400,bg=#444444] #{prefix_highlight} #[fg=#313131,bg=#444444,nobold,nounderscore,noitalics]#[fg=#a4e400,bg=#313131]  %H:%M #[fg=#444444,bg=#313131,nobold,nounderscore,noitalics]#[fg=#a4e400,bg=#444444,nobold,nounderscore,noitalics]#[fg=#313131,bg=#a4e400,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "12" ]' {
    set -g status-right "#[fg=#444444,bg=#444444,nobold,nounderscore,noitalics]#[fg=#a4e400,bg=#444444] #{prefix_highlight} #[fg=#313131,bg=#444444,nobold,nounderscore,noitalics]#[fg=#a4e400,bg=#313131]  %I:%M %p #[fg=#444444,bg=#313131,nobold,nounderscore,noitalics]#[fg=#a4e400,bg=#444444,nobold,nounderscore,noitalics]#[fg=#313131,bg=#a4e400,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#e8e8e8,bg=#444444"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#e8e8e8,bg=#444444"
setw -g window-status-format "#[fg=#444444,bg=#444444,nobold,nounderscore,noitalics]#[default]#I  #W#[fg=#444444,bg=#444444,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#444444,bg=#313131,nobold,nounderscore,noitalics]#[fg=#a4e400,bg=#313131,bold] #I  #W #[fg=#313131,bg=#444444,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#e0af68]#[bg=#444444]#[fg=#444444]#[bg=#e0af68]"
set -g @prefix_highlight_output_suffix ""
