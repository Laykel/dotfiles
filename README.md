# My system's dotfiles (WIP, obviously)
My system/tools' configuration. Maybe you'll find things of interest in there.

### Scripts folder
- This folder contains a script to update the package lists and the configs plugins, a script to deploy the dotfiles on a new system (provided the folder is cloned in ~/Dev/dotfiles), and the package lists.

#### Package lists:
- allPackages.txt is the output of `dpkg -l | grep ii`
- installedPackages.txt is the output of `comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)`
- ppasList.txt is pretty self-explanatory.
