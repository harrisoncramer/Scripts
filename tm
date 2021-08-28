#!/bin/bash
# Script for configuring tmux instance inside of the current folder

dir=$(pwd)
project_name_unedited=$(basename "$dir")
project_name=$(echo $project_name_unedited | sed 's/\./_/g')

echo $project_name


tmux has-session -t $project_name 2>/dev/null

if [ $? != 0 ]; then
      tmux new -s $project_name \; \
      rename-window 'vim' \; \
      new-window \; \
      rename-window 'terminal'\; \
      split-window -v \; \
      previous-window \; \
      send-keys 'v' Enter\; \
      send-keys '::'\;
else
  tmux attach -t $project_name
fi
