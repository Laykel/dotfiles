# Aliases
# Very common
alias l="ls -ah --group-directories-first"
alias ll="ls -lhaF --color=auto --group-directories-first"
alias cl="clear;ls -h --group-directories-first"

alias s="sudo"
alias v="vim"
alias g="git"

alias gs="git status"
alias gl="git log"
alias ga="git add ."
alias gc="git commit"
alias gp="git push origin master"

# Open program with specific parameters
alias gpp="g++ -Wall -Wconversion -Wextra -pedantic -std=c++11"
alias composer="/usr/local/bin/composer.phar"
alias laravel="~/.config/composer/vendor/bin/laravel"
alias heigvpn="sudo openconnect --authgroup=All_Users --user=luc.wachter --no-cert-check https://remote.heig-vd.ch"

alias fanmin="clevo-indicator 40"
alias fanlow="clevo-indicator 45"
alias fanmiddle="clevo-indicator 50"
alias fanhigh="clevo-indicator 55"

alias mp3-dl="youtube-dl --audio-quality 1 --extract-audio --audio-format mp3"

# Moving around
alias cdev="cd ~/Dev/"
alias cdot="cd ~/Dev/dotfiles/"
alias cdoc="cd ~/Documents/"
alias cnotes="cd ~/Documents/Notebooks/"
alias cheig="cd ~/HEIG/Unités"
alias cwww="cd ~/Shortcuts/web/www/"
alias cshort="cd ~/Shortcuts/"

alias ,q="exit"
alias help="man"

# Configuration
alias vconf="vim ~/Dev/dotfiles/vim/vimrc"
alias zconf="vim ~/Dev/dotfiles/zsh/zshrc"
alias zaconf="vim ~/Dev/dotfiles/zsh/aliases.sh"
alias tconf="vim ~/Dev/dotfiles/tmux/tmux.conf"

# Package commands
alias dp="dpkg -l | grep "
alias aptl="apt list --upgradable"
alias apts="apt search"
alias aptupd="sudo apt update"
alias aptupg="sudo apt upgrade"
alias apti="sudo apt install"

# Tmux
alias tm="tmux attach -t base || tmux new -s base"
alias tl="tmux ls"
alias tn="tmux new -s "
alias tk="tmux kill-session -t "
