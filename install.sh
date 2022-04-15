#!/bin/sh

DIR=${PWD}

# vim
mkdir $HOME/.vim
ln -is $DIR/vim/vimrc $HOME/.vim/vimrc

# zsh
ln -is $DIR/zsh/.zshrc $HOME/.zshrc
mkdir $HOME/.oh-my-zsh/custom
ln -is $DIR/zsh/oh-my-zsh/aliases.zsh $HOME/.oh-my-zsh/custom/aliases.zsh 

# tmux
ln -is $DIR/tmux.conf $HOME/.tmux.conf

# scripts
mkdir $HOME/bin
ln -is $DIR/scripts/ide.sh $HOME/bin/ide
chmod +x $HOME/bin/ide

