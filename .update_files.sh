#!/bin/bash

DIR=$(cd `dirname $0` && pwd)
echo $DIR

cp ~/.bashrc ${DIR}/.bashrc
cp ~/.bash_aliases ${DIR}/.bash_aliases
cp ~/.tmux.conf ${DIR}/.tmux.conf
cp ~/.config/neofetch/config.conf ${DIR}/.config/neofetch/config.conf
cp ~/.config/nvim/init.vim ${DIR}/.config/nvim/init.vim
