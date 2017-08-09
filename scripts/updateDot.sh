#!/bin/bash

# Update list files
dpkg -l | grep ii > allPackages.txt

comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u) > installedPackages.txt

"$HOME/.tmux/plugins/tpm/bin/update_plugins" all
vim +VundleUpdate +qa
