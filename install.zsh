#!/bin/zsh

DIR=${PWD}

# vim
if read -qs "?Install .vim/vimrc? (y/n)"$'\n'; then
  if [ -f $HOME/.vim/vimrc ]; then
    mv $HOME/.vim/vimrc $HOME/.vim/vimrc.old
  fi


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
  mkdir $HOME/.oh-my-zsh/custom
  ln -is $DIR/zsh/oh-my-zsh/aliases.zsh $HOME/.oh-my-zsh/custom/aliases.zsh 
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

echo $'\n'

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

# nvim
if read -qs "?Install .config/nvim/init.vim? (y/n)"$'\n'; then
  if [ -f $HOME/nvim/init.vim ]; then
    ln -is $DIR/nvim/init.vim $HOME/.config/nvim/init.vim
  fi
fi
