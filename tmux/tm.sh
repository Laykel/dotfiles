#/bin/bash
SESSION=`basename $PWD`

tmux -2 new-session -d -s $SESSION

tmux rename-window -t $SESSION:1 Labo
tmux split-window -h
tmux select-pane -t 0
tmux resize-pane -R 35

tmux new-window -t $SESSION -a -n C++
# cd ??

# New window for ranger ??
