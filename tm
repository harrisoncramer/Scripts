#!/bin/bash
# Script for configuring tmux instance inside of the current folder

dir=$(pwd)
project_name_unedited=$(basename "$dir")
project_name=$(echo $project_name_unedited | sed 's/\./_/g')

echo $project_name


# tmux has-session -t $project_name 2>/dev/null

# if [ $? != 0 ]; then
#       tmux new -s $project_name \; \
#       split-window -v \; \
#       resize-pane -D 20 \; \
#       split-window -h \; \
#       select-pane -t 1 \; \
#       rename-window 'dev' \; \
#       new-window \; \
#       send-keys 'dkk' Enter\; \
#       send-keys 'clear' Enter\; \
#       rename-window 'desktop'\; \
#       previous-window \; \
#       send-keys 'v' Enter\;
# else
#   tmux attach -t $project_name
# fi
