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

prefix-, : name window
prefix-& : kill window

##Panes
prefix-- : new vertical split
prefix-\_ : new horizontal split
prefix-o : swap panes
prefix-hjkl : swap to pane in that direction
prefix-q : show pane numbers

prefix-x : kill pane
prefix-k : fullscreen pane
prefix-j : reset pane from fullscreen

prefix-space : switch between layouts
prefix-{||} : move pane left or right
prefix-arrows : resize pane

##Copy mode
vim-like enabled - use vim bindings to move around.

C-[ : to enter copy mode
<space> to start copying
<enter> to copy and exit mode
prefix-] : to paste the buffer's content

tmux list-buffers : to list tmux clipboard content
tmux show-buffer : t show current buffer
