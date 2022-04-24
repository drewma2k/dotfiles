#!/bin/sh

DIR=${PWD}

mkdir $HOME/.vim
ln -is $DIR/vim/vimrc $HOME/.vim/vimrc

ln -is $DIR/zsh/.zshrc $HOME/.zshrc
mkdir $HOME/.oh-my-zsh/custom
ln -is $DIR/zsh/oh-my-zsh/aliases.zsh $HOME/.oh-my-zsh/custom/aliases.zsh 

# tmux
ln -is $DIR/tmux.conf $HOME/.tmux.conf

# nvim
ln -is $DIR/nvim/init.vim $HOME/.config/nvim/init.vim

