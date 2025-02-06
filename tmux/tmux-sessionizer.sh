#!/usr/bin/env bash

# DUAL_PANES = ( "cupa" )

if [[ $# -eq 1 ]]; then
  selected=$1
else
  selected=$(find ~/Code -mindepth 1 -maxdepth 2 -type d | fzf)
fi

if [[ -z $selected ]]; then
  exit 0
fi

# selected_name=$(basename "$selected" | tr . _)
selected_name=$(echo "$selected" | cut -d '/' -f 5,6)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
  tmux new-session -s $selected_name -c $selected
  tmux send-keys -t $selected_name "source $XDG_CONFIG_HOME/tmux/tmux-commands" Enter
  exit 0
fi

if ! tmux has-session -t=$selected_name 2>/dev/null; then
  tmux new-session -ds $selected_name -c $selected
  tmux send-keys -t $selected_name "source $XDG_CONFIG_HOME/tmux/tmux-commands" Enter
fi

tmux switch-client -t $selected_name
