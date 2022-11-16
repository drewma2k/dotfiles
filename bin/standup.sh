#!/bin/bash
DIR="/Users/yde639/Documents/notes/standup"
cd $DIR
DATE=$(date +%Y-%m-%d)
touch $DATE

#if we havn't updated symlinks yet
if [[ $DATE != $(readlink today) ]]; then

  #switch values of today and yesterday
  ln -sF $(readlink today) yesterday
  ln -sF $DATE today
fi

#open vim
nvim -o $(readlink today) $(readlink yesterday)
