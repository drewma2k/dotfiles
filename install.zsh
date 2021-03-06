#!/bin/zsh

DIR=${PWD}

# vim
if read -qs "?Install .vim/vimrc and requirements? (y/n)"$'\n'; then
  if [ -f $HOME/.vim/vimrc ]; then
    mv $HOME/.vim/vimrc $HOME/.vim/vimrc.old
  fi

  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

  mkdir $HOME/.vim
  ln -is $DIR/vim/vimrc $HOME/.vim/vimrc
fi

echo $'\n'

# zsh
if read -qs "?Install zsh configs? (y/n)"$'\n'; then
  if [ -f $HOME/.zshrc ]; then
    mv $HOME/.zshrc $HOME/.zshrc.old
  fi

  ln -is $DIR/zsh/.zshrc $HOME/.zshrc
fi

echo $'\n'

#oh-my-zsh
if read -qs "?Install oh-my-zsh config? (y/n)"$'\n'; then
  for file in $(ls $DIR/oh-my-zsh/custom) ; do
    mkdir $HOME/.oh-my-zsh/custom
    ln -is $DIR/oh-my-zsh/custom/$file $HOME/.oh-my-zsh/custom/$file 
  done
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
fi

# tmux
if read -qs "?Install .tmux.conf? (y/n)"$'\n'; then
  if [ -f $HOME/.tmux.conf ]; then
    ln -is $DIR/tmux.conf $HOME/.tmux.conf
  fi
fi

echo $'\n'

# scripts
if read -qs "?Install scripts to ~/bin? (y/n)"$'\n'; then
  mkdir $HOME/bin
  ln -is $DIR/scripts/ide.sh $HOME/bin/ide
  chmod +x $HOME/bin/ide
fi

echo $'\n'

#nvim
git clone https://github.com/drewma2k/nvim $HOME/.config/nvim

