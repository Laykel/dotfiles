#!/bin/bash

# Install stuff
sudo pacman -Syu
sudo pacman -S fish vim tmux zathura tldr wget curl httpie xcape xsel

# CHANGE SHELL TO FISH
# Make sure fish is in /etc/shells
# chsh -s (fish_path)

# Move dotfiles to appropriate locations
ln -s "/home/luc/Dev/dotfiles/shells/fish" "$HOME/.config/fish"

printf "so %s/Dev/dotfiles/vim/vimrc" "$HOME" > ~/.vimrc
printf "source-file %s/Dev/dotfiles/tmux/tmux.conf" "$HOME" > ~/.tmux.conf

ln -s "$HOME/Dev/dotfiles/tldrrc" "$HOME/.tldrrc"
ln -s "$HOME/Dev/dotfiles/zathurarc" "$HOME/.config/zathura/zathurarc"

# Create vim folders
mkdir -p "$HOME"/.vim/{backup,swap,undo}

# Install TPM for tmux plugins
git clone "https://github.com/tmux-plugins/tpm" "$HOME/.tmux/plugins/tpm"

"$HOME/.tmux/plugins/tpm/bin/install_plugins"
