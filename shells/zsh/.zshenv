# Environment variables
# Config paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export DOTFILES="$HOME/Dev/dotfiles"

# ZSH and shell specific
export HISTFILE="$ZDOTDIR/history"
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

export EDITOR="vim"
export VISUAL="vim"

# Language or app specific
export GOPATH="$HOME/Dev/go"
export GOBIN="$HOME/Dev/go/bin"
export GOCACHE="$XDG_CACHE_HOME/go-build"
