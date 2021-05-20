fish_vi_key_bindings
set fish_greeting

# Nice blue-green
set fish_color_cwd 20907a

# Env vars
set DOTFILES $HOME/Dev/dotfiles
# set CHEATCOLORS true
# set EDITOR vim
# set GOPATH $HOME/.go
# nvm? virtualenvs? sdkman?

source $DOTFILES/shells/aliases/abbrs

# Put those in functions folder
# Testing functions
function mkcd
  mkdir -p $argv
  cd $argv
end

function cd
  if count $argv > /dev/null
    builtin cd "$argv"; and ls
  else
    builtin cd ~; and ls
  end
end

function sudo
  if test "$argv" = !!
    eval command sudo $history[1]
  else
    command sudo $argv
  end
end

# Man colouring (actually all of less output)
# start of bold:
set -x LESS_TERMCAP_md (set_color --bold red)
# end of all formatting:
set -x LESS_TERMCAP_me (set_color normal)
# start of underline:
set -x LESS_TERMCAP_us (set_color --bold green)
# end of underline:
set -x LESS_TERMCAP_ue (set_color normal)

# Set CapsLock to act as Escape on tap and Ctrl on hold
# setxkbmap -option ctrl:nocaps
# xcape -e 'Control_L=Escape'
