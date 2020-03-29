#!/usr/bin/env bash

#
# This scripts creates an minimal linux home environment so I feel comfortable
# on servers
#

# needed packages
packages="make zsh git exuberant-ctags byobu exa neovim"
username="stramp"

if [ "$USER" = "root" ]; then
    apt-get update
    apt-get upgrade
    apt-get install $packages
    useradd -m -s `which zsh` $username
fi

if [ "$USER" = "$username" ]; then

    # xdb directories
    mkdir -p ~/.config/ ~/.cache/

    # clone and run
    # this will setup git, ssh, vim, zsh, ...
    rcdir=~/.config/rc
    rm -rf $rcdir
    git clone git://github.com/seebi/rc.git $rcdir
    cd $rcdir/init
    make -B all
fi
