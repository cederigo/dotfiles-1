#!/bin/sh
# Update submodules
git submodule foreach git pull origin master

# Compile command-t c extension
cd $ZSH/vim/bundle/command-t/ruby/command-t/
CC=cc ruby ext/command-t/extconf.rb
make
cd -

# Centralized backups, swapfiles and undo history
mkdir -p ~/.vim/{backups,swaps,undo}

exit 0
