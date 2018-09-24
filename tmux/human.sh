#!/bin/bash

tm_icon="  "
tm_color_background=colour234
tm_color_active=colour118
tm_color_inactive=colour241
tm_color_feature=colour4
tm_color_music=colour203

# separators
tm_left_separator=''
tm_left_separator_black=''
tm_right_separator=''
tm_right_separator_black=''
tm_session_symbol=''

set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5


# default statusbar colors
# set-option -g status-bg colour0
set-option -g status-fg $tm_color_active
set-option -g status-bg default
set-option -g status-attr default

# default window title colors
set-window-option -g window-status-fg $tm_color_inactive
set-window-option -g window-status-bg default
set -g window-status-format "#I #W"

# active window title colors
set-window-option -g  window-status-current-format " #[fg=$tm_color_feature,bold]#I #W  "

# pane border
set-option -g pane-border-fg $tm_color_inactive
set-option -g pane-active-border-fg $tm_color_active

# message text
set-option -g message-bg default
set-option -g message-fg $tm_color_active

# pane number display
set-option -g display-panes-active-colour $tm_color_active
set-option -g display-panes-colour $tm_color_inactive

tm_spotify="#[fg=$tm_color_music]#(osascript ~/dotfiles/applescripts/tunes.scpt)"
tm_battery=" #(~/dotfiles/bin/battery_indicator.sh)"
tm_wifi="#[fg=$tm_color_feature] #(~/dotfiles/bin/wifi.sh)"

tm_date="#[bg=$tm_color_music,fg=$tm_color_background,bold] %R %a %d %b#[fg=$tm_color_music,bg=default,nobold]$tm_left_separator_black"
tm_host="#[fg=$tm_color_music]$tm_right_separator_black#[bg=$tm_color_music,fg=$tm_color_background,bold] #h "
tm_session_name="#[bg=$tm_color_feature,fg=$tm_color_background,bold]$tm_icon #S #[fg=$tm_color_feature,bg=default,nobold]$tm_left_separator_black"

set -g status-left $tm_date' '
set -g status-right $tm_spotify' '$tm_wifi' '$tm_battery' '$tm_host
