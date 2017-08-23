# My system's dotfiles (WIP, obviously)
My system/tools' configuration. Maybe you'll find things of interest in there.

## To-do:
- complete vim, kde saves
- update and enhance cheatsheets
- try out neovim

_To save maybe:_
Firefox accounts, config
Thunderbird accounts, config!!
Chrome accounts
Eventually save /usr/share/applications or some of it
Eventually save /opt/ -- Xmind, geekbench4, etcher, franz, tor...

## Content

### vim:
- Contains my vimrc as well as a cheat sheet, my bindings, and my plugins, managed through Vundle.

### tmux:
- Contains my tmux.conf file as well as a cheat sheet. (Also a theme file for the tmux bar)
- Tmux plugin manager (TPM)

### zshrc:
- Just my zshrc file, with all my aliases, configs and plugins, managed through oh-my-zsh.

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
- Once again, the config file.

### Syncthing:
- Config file for Syncthing. (Folder for the config: $HOME/.config/syncthing/...)

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
