#!/bin/bash

# from https://stackoverflow.com/questions/59895/how-do-i-get-the-directory-where-a-bash-script-is-located-from-within-the-script
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd $SCRIPT_DIR

ln -s $SCRIPT_DIR/.tmux.conf ~/.tmux.conf
ln -s $SCRIPT_DIR/.config/nvim ~/.config/nvim
ln -s $SCRIPT_DIR/.config/tmux ~/.config/tmux
