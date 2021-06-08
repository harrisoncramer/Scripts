#!/bin/bash
# Script for configuring tmux instance inside of the current folder

project_name=$(basename "$0")

tmux has-session -t $project_name 2>/dev/null

if [ $? != 0 ]; then
      tmux new -s $project_name \; \
      split-window -v \; \
      resize-pane -D 10 \; \
      select-pane -t 1 \; \
      send-keys 'v' Enter\; \
      send-keys 'sv'\; \
      rename-window 'dev' \; \
      new-window \; \
      send-keys 'dkk' Enter\; \
      send-keys 'clear' Enter\; \
      rename-window 'desktop'\; \
      previous-window \;
else
  tmux attach -t $project_name
fi
