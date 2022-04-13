#!/usr/bin/env bash

#
# This scripts creates an minimal linux home environment so I feel comfortable
# on servers
#

# needed packages
sudo apt update
sudo apt upgrade
sudo apt install make zsh git exuberant-ctags byobu exa neovim

# xdb directories
mkdir -p ~/.config/ ~/.cache/

# clone and run
# this will setup git, ssh, vim, zsh, ...
rcdir=~/.config/rc
rm -rf $rcdir
git clone https://github.com/seebi/rc.git $rcdir
cd $rcdir/init
make -B all
