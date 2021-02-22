#!/bin/bash

# Fully update distro and apt packages
sudo pacman -Syu
# yay to also update aur packages
# Remove unneeded dependencies
pacman -Qdtq | sudo pacman -Rs -

# Clean package cache
sudo pacman -Sc

# Get all info on "installed" packages
pacman -Q > system/allPackages.txt

# Get only strictly installed packages
pacman -Qe > system/installedPackages.txt

# Get all strictly aur installed packages (awful, but works)
#for x in `pacman -Qm`; do yay -Ss "$x" | grep 'aur/' | grep '(Installed)'; done

# Update tmux plugins
"$HOME/.tmux/plugins/tpm/bin/update_plugins" all

# Update vim plugins
vim +PlugUpdate +qa

# System maintenance
echo -e "\nList pacnew and pacsave files to take care of"
echo "============================================="
find / -regextype posix-extended -regex ".+\.pac(new|save)" 2> /dev/null

echo -e "\nList syncthing conflicts"
echo "============================================="
find /home/luc -name "*sync-conflict*" 2> /dev/null

# =======================================================================
# Update R packages
# sudo R -e 'update.packages(repos="https://stat.ethz.ch/CRAN/")'

# Update Pip packages ?
# import pkg_resources
# from subprocess import call
# packages = [dist.project_name for dist in pkg_resources.working_set]
# call("pip install --upgrade --user " + ' '.join(packages), shell=True)

# Update npm packages
# npm update -g
