#!/bin/bash
DIR="/$HOME/Documents/notes/standup"
mkdir -p $DIR
cd $DIR
DATE=$(date +%Y-%m-%d)
touch $DATE.md

#if we havn't updated symlinks yet
if [[ $DATE.md != $(readlink today) ]]; then

  #switch values of today and yesterday
  ln -sF $(readlink today) yesterday
  ln -sF $DATE.md today
fi

#open vim
nvim -o $(readlink today) $(readlink yesterday)
