#!/bin/bash
DIR="/Users/yde639/Documents/notes/standup"
cd $DIR
DATE=$(date +%Y-%m-%d)
touch $DATE.txt

#if we havn't updated symlinks yet
if [[ $DATE.txt != $(readlink today) ]]; then

  #switch values of today and yesterday
  ln -sF $(readlink today) yesterday
  ln -sF $DATE.txt today
fi

#open vim
nvim -o $(readlink today) $(readlink yesterday)
