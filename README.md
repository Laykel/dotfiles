# Tools' dotfiles
My system/tools' configuration.

## zsh
- _Shell with cool features_
- `oh-my-zsh` as a "framework".
- `prompt.sh` is my prompt, modified from [Parth's](https://github.com/Parth/dotfiles).
- `aliases` is a list of my shell aliases.
- `functions` contains all my shell functions.
- `bashrc` for when I have to use bash.

## vim
- _Modal text editor / Swiss army knife_
- `vim-plug` for plugin management.
- `np-vimrc` is a version without plugins.
- `editorconfig` describes tab types and sizes for different filetypes.
- `gitignore` is an example gitignore.
- `snippets` contains code snippets...

## tmux
- _Terminal multiplexer_
- `tpm` for plugin management.
- `tmux_wombat` is a theme for the bar / boundaries.

## zathura
- _PDF reader with vim bindings_

## gdb
- _GNU debugger_
- Contains a powerful script to make gdb more verbose and prettier.
- Adapted from `cyrus-and`'s [gdb-dashboard](https://github.com/cyrus-and/gdb-dashboard).

## tldr
- _Simple reminders for not so simple commands_

## ranger
- _A file navigator for the terminal_
- Config from [Luke Smith](https://github.com/LukeSmithxyz/voidrice).

## Scripts folder
- This folder contains a script to update the package lists and the configs plugins, a script to deploy the dotfiles on a new system (provided the folder is cloned in ~/Dev/dotfiles), and the package lists.

### Package lists:
- allPackages.txt is the output of `dpkg -l | grep ii`
- installedPackages.txt is the output of `comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)`
- ppasList.txt is pretty self-explanatory.
