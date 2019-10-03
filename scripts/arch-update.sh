#!/bin/bash

# Get all info on "installed" packages
sudo pacman -Q > allPackages.txt

# Get only strictly installed packages
sudo pacman -Qe > installedPackages.txt

# Fully update distro and apt packages
sudo pacman -Syu
# yay to also update aur packages
# Remove unneeded dependencies
pacman -Qdtq | sudo pacman -Rs -

# Update tmux plugins
"$HOME/.tmux/plugins/tpm/bin/update_plugins" all

# Update vim plugins
vim +PlugUpdate +qa

# Update R packages
sudo R -e 'update.packages(repos="https://stat.ethz.ch/CRAN/")'

# Update Pip packages ?
# import pip
# from subprocess import call
# packages = [dist.project_name for dist in pip.get_installed_distributions()]
# call("pip install --upgrade " + ' '.join(packages), shell=True)

# Update npm packages
# npm update -g
