#!/bin/zsh
if [ -f $HOME/.vim/vimrc.old ]; then
  rm $HOME/.vim/vimrc
  mv $HOME/.vim/vimrc.old $HOME/.vim/vimrc
fi


if [ -f $HOME/.zshrc ]; then
  rm $HOME/.zshrc
  mv $HOME/.zshrc.old $HOME/.zshrc
fi

if [ -f $HOME/.oh-my-zsh/custom.aliases.zsh ]; then
  rm $HOME/.oh-my-zsh/custom/.aliases.zsh
fi

if [ -f $HOME/.tmux.conf ]; then
  rm $HOME/.tmux.conf
  mv $HOME/.tmux.conf.old $HOME/.tmux.conf
fi

if [ -f $HOME/bin/ide ]; then
  rm $HOME/bin/ide
fi

if [ -f $HOME/.config/nvim/init.vim ]; then
  rm $HOME/.config/nvim/init.vim
  mv $HOME/.config/nvim/init.vim.old $HOME/.config/nvim/init.vim
fi
