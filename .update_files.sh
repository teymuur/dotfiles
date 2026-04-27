#!/bin/bash

DIR=$(cd `dirname $0` && pwd)
echo $DIR

# Shell
cp ~/.bashrc ${DIR}/.bashrc
cp ~/.bash_aliases ${DIR}/.bash_aliases
cp ~/.zshrc ${DIR}/.zshrc
cp ~/.p10k.zsh ${DIR}/.p10k.zsh

# Tmux
cp ~/.tmux.conf ${DIR}/.tmux.conf

# Editor
cp ~/.config/nvim/init.vim ${DIR}/.config/nvim/init.vim

cp ~/.config/nvim/lua/* ${DIR}/.config/nvim/lua/
# System info
cp -r ~/.config/fastfetch/* ${DIR}/.config/fastfetch/

# Sway/i3
cp -r ~/.config/i3/* ${DIR}/.config/i3/

# Waybar
cp -r ~/.config/waybar/* ${DIR}/.config/waybar/

# Rofi
cp -r ~/.config/rofi/* ${DIR}/.config/rofi/

# Kitty terminal
cp ~/.config/kitty/kitty.conf ${DIR}/.config/kitty/kitty.conf
