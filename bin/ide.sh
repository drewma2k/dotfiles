#!/bin/bash
# open an ide - like environment in a shell

dir=$(pwd)
file=$1

tmux splitw -v -c $dir -l 30%

vim -c Lex $file
