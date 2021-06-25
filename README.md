# Tools' dotfiles

## shells
- `python shells/aliases/generate_aliases.py` to generate the shell aliases for zsh and fish
- No shell framework, all manual config, custom prompt

### zsh
- `zshenv` goes to `$HOME/.zshenv`
- `zshrc` goes to `$HOME/.config/zsh/.zshrc`
- `git submodule update --init --recursive` to pull the zsh plugins
- `chsh -s $(which zsh)`

### fish
- `ln -s "/home/luc/Dev/dotfiles/shells/fish" "$HOME/.config/fish"`
- `chsh -s `which fish``

---

## editors
- `editorconfig` describes tab types and sizes for different filetypes.
    - Goes in `$HOME/.editorconfig`

### vim
- `vim-plug` for plugin management.
- `np-vimrc` is a version without plugins.

---

## tmux
- `tpm` for plugin management.
- `tmux_wombat` is a theme for the bar / boundaries.

---

## gdb
- Contains a powerful script to make gdb more verbose and prettier.
- Adapted from `cyrus-and`'s [gdb-dashboard](https://github.com/cyrus-and/gdb-dashboard).

## ranger
- Config from [Luke Smith](https://github.com/LukeSmithxyz/voidrice).
