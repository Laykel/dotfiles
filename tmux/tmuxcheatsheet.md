#tmux Cheatsheet

##Sessions
tmux new -s name : creates session name
tmux a -t name : attach to session name
tmux a number : attach to unnamed session
tmux ls : list sessions
tmux kill-session -t name : explicit

prefix-d : detach from session
prefix-s : lists sessions
prefix-$ : name session

##Windows
prefix-c : create window
prefix-w : list windows
prefix-n : next window
prefix-p : previous window
prefix-numbers : select window

prefix-< : move window to the left
prefix-> : move window to the right

prefix-, : name window
prefix-& : kill window

##Panes
prefix-- : new vertical split
prefix-\_ : new horizontal split
prefix-o : swap panes
Ctrl-hjkl : swap to pane in that direction
prefix-q : show pane numbers

prefix-x : kill pane
prefix-z : toggle fullscreen pane

prefix-space : switch between layouts
prefix-{||} : move pane left or right
prefix-hjkl : resize pane

##Copy mode
vim-like enabled - use vim bindings to move around.

prefix-v : to enter copy mode
<space> to start copying
<enter> to copy and exit mode
or y to copy to system clipboard
prefix-p : to paste the buffer's content

tmux list-buffers : to list tmux clipboard content
tmux show-buffer : t show current buffer
