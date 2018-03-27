#!/bin/bash

# Get all info on "installed" packages
dpkg -l | grep ii > allPackages.txt

# Get only strictly installed packages
comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u) > installedPackages.txt

# Get all ppas
egrep -v '^#|^ *$' /etc/apt/sources.list /etc/apt/sources.list.d/* > ppasList.txt

# Fully update distro and apt packages

# Update snap packages

# Update python packages

# Update tmux plugins
"$HOME/.tmux/plugins/tpm/bin/update_plugins" all

# Update vim plugins
vim +VundleUpdate +qa

# Update npm packages
npm update -g
