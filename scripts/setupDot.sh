#!/bin/bash

# Move dotfiles to appropriate locations
ln -s "$HOME/Dev/dotfiles/zshrc" "$HOME/.zshrc"
ln -s "$HOME/Dev/dotfiles/vim/vimrc" "$HOME/.vimrc"
ln -s "$HOME/Dev/dotfiles/tmux/tmux.conf" "$HOME/.tmux.conf"
ln -s "$HOME/Dev/dotfiles/tldrrc" "$HOME/.tldrrc"
# ln ranger
# ln zathura
# ln syncthing

# Install Vundle and TPM
git clone "https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim"
git clone "https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm"

# Install vim and tmux plugins
"$HOME/.tmux/plugins/tpm/bin/install_plugins"
vim +VundleInstall +qa
