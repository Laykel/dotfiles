# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/luc/.oh-my-zsh

# Themes (random for random themes)
ZSH_THEME="agnoster"

# Plugins
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git node npm colored-man-pages colorize z)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

HYPHEN_INSENSITIVE="true"
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Users are encouraged to define aliases within the ZSH_CUSTOM folder.# {{{
# For a full list of active aliases, run `alias`.
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias l="ls"
alias ll="ls -lhaF --color=auto"
alias cl="clear"

alias s="sudo"
alias v="vim"
alias g="git"
alias gs="git status"
alias ga="git add ."
alias gp="git push origin master"

alias fanmin="clevo-indicator 40"
alias fanlow="clevo-indicator 45"
alias fanhigh="clevo-indicator 55"

alias cdev="cd ~/Dev/"
alias cdot="cd ~/Dev/dotfiles/"
alias cdoc="cd ~/Documents/"
alias cwww="cd ~/Shortcuts/web/www/"
alias cshort="cd ~/Shortcuts/"

alias dp="dpkg -l | grep "
alias aptshowupd="apt list --upgradable"
alias aptupd="sudo apt update"
alias aptupg="sudo apt upgrade"

alias tm="tmux attach -t base || tmux new -s base"
# }}}

# Launch tmux with screen-256color
if [[ -n "$TMUX" ]] && [[ ! -e "/root/.automatic_start_occurred" ]];then
	export TERM=screen-256color
fi
