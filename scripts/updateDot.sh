#!/bin/bash

# Get all info on "installed" packages
dpkg -l | grep ii > allPackages.txt

# Get only strictly installed packages
comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u) > installedPackages.txt

# Get all ppas
egrep -v '^#|^ *$' /etc/apt/sources.list /etc/apt/sources.list.d/* > ppasList.txt

# Fully update distro and apt packages
# sudo apt-get clean
# sudo apt-get update
# sudo apt-get dist-upgrade
# sudo do-release-upgrade
# sudo apt-get autoremove

# Update snap packages
sudo snap refresh

# Update tmux plugins
"$HOME/.tmux/plugins/tpm/bin/update_plugins" all

# Update vim plugins
vim +PlugUpdate +qa

# Update R packages
sudo R -e 'update.packages()'

# Update Pip packages ?
# import pip
# from subprocess import call
# packages = [dist.project_name for dist in pip.get_installed_distributions()]
# call("pip install --upgrade " + ' '.join(packages), shell=True)

# Update npm packages
# npm update -g
