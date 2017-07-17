# My system's dotfiles (WIP, obviously)
My system/tools' configuration. Maybe you'll find things of interest in there.

##To-do:
- complete vim, zsh, syncthing and kde saves
- script to update repo automatically
- script to deploy config on a new system
- try out neovim

##Content

### vim:
- Contains my vimrc as well as a cheat sheet of vim, my bindings and my plugins.
- Install vundle first:

`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

### tmux:
- Contains my tmux.conf file as well as the same kind of cheat sheet as for the others configs.
- (Also a theme file for the tmux bar.)

### zshrc:
- It's just my zshrc file, with all my aliases, configs and plugins. (OhMyZsh)

### tldrrc:
- The config file, with just a little thing to display colours.

### ranger:
- My config files for ranger. Also, surprise, a cheat sheet!
	- rc.conf: setting various options, biding keys to functions.
	- commands.py: functions in Python to modify its behaviour.
	- rifle.conf: default programs for opening files.
	- scope.sh: shell script to generate file previews.
	- bookmarks
- WIP

### zathura:
- Once again, the config file and the cheat sheet that goes with it.

### Syncthing:
- The folder contains my configuration for syncthing.
- Folder for the config: $HOME/.config/syncthing/...

### Sublime:
- A list of all the packages I use.

### kde:
- Contains different config files for my kde setup.

### i3:
- Contains my i3config file as well as my bar config and a cheat sheet.

### Package lists:
- allPackages.txt is the output of `apt list --installed`
- installedPackages.txt is the output of `comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)`
