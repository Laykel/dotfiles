fish_vi_key_bindings
set fish_greeting

# Env vars
set DOTFILES $HOME/Dev/dotfiles

# -- TODO Set those as needed
# set PATH
# set CHEATCOLORS true
# set EDITOR vim
# set GOPATH $HOME/.go
# nvm? virtualenvs? sdkman?

source $DOTFILES/shells/aliases/abbrs

# -- TODO Maybe set that as universal variables?
# Man colouring (actually all of less output)
# start of bold:
set -x LESS_TERMCAP_md (set_color --bold blue)
# end of all formatting:
set -x LESS_TERMCAP_me (set_color normal)
# start of underline:
set -x LESS_TERMCAP_us (set_color --bold green)
# end of underline:
set -x LESS_TERMCAP_ue (set_color normal)

kubectl completion fish | source

starship init fish | source

# -------- To be enabled in extreme distress ----------
# Set CapsLock to act as Escape on tap and Ctrl on hold
# setxkbmap -option ctrl:nocaps
# xcape -e 'Control_L=Escape'


# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish
