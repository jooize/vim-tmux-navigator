#!/bin/sh

# Smart pane switching with awareness of vim splits
is_vim='echo "#{pane_current_command}" | grep -iqE "(^|\/)g?(view|n?vim?)(diff)?$"'
tmux bind -n C-h if-shell "$is_vim" "send-keys C-h" "select-pane -L"
tmux bind -n C-j if-shell "$is_vim" "send-keys C-j" "select-pane -D"
tmux bind -n C-k if-shell "$is_vim" "send-keys C-k" "select-pane -U"
tmux bind -n C-l if-shell "$is_vim" "send-keys C-l" "select-pane -R"
tmux bind -n C-\ if-shell "$is_vim" "send-keys C-\\" "select-pane -l"

