# My system's dotfiles (WIP, obviously)
My system/tools' configuration. Maybe you'll find things of interest in there.

## To-do:
- complete vim, kde saves
- update and enhance cheatsheets
- try out neovim

## Content

### vim:
- My vimrc file
- A folder containing snippets
- A cheatsheet and a little bindings help file
- (Using Vundle for plugin management)

### tmux:
- My tmux.conf file
- A theme file for the tmux bar
- (Using tmux plugin manager - TPM)

### zshrc:
- My zshrc file
- An aliases file with all my aliases
- A prompt file, taken from "Parth/dotfiles"
- (Using oh-my-zsh)
- Also my bashrc file, lightly modified

### tldrrc:
- Just a little config to show colours in tldr's output

### ranger:
- My config files for ranger
	- rc.conf: setting various options, biding keys to functions
	- commands.py: functions in Python to modify its behaviour
	- rifle.conf: default programs for opening files
	- scope.sh: shell script to generate file previews
	- bookmarks
- A cheatsheet

### zathura:
- My zathurarc file.

### Syncthing:
- Config file for Syncthing.

### Sublime:
- A list of all the packages (plugins) I use.

### kde:
- Contains different config files for my kde setup.

### i3:
- Contains my i3config file as well as my bar config and a cheat sheet.

### Scripts folder
- This folder contains a script to update the package lists and the configs plugins, a script to deploy the dotfiles on a new system (provided the folder is cloned in ~/Dev/dotfiles), and the package lists.

#### Package lists:
- allPackages.txt is the output of `dpkg -l | grep ii`
- installedPackages.txt is the output of `comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)`
- ppasList.txt is pretty self-explanatory.
