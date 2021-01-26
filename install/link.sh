#!/bin/bash

DOTFILES=$HOME/.dotfiles

echo "creating symlinks"
linkables=$( ls -1 -d **/*.symlink )
for file in $linkables ; do
    target="$HOME/.$( basename $file ".symlink" )"
    echo "creating symlink for $file"
    ln -s $DOTFILES/$file $target
done

mkdir -p ~/.config/i3
ln -s ~/.dotfiles/i3/i3_config ~/.config/i3/config

mkdir -p ~/.config/polybar
ln -s ~/.dotfiles/i3/polybar/config ~/.config/polybar/config
ln -s ~/.dotfiles/i3/polybar/launch.sh ~/.config/polybar/launch.sh

ln -s ~/.dotfiles/flake8/config ~/.config/flake8
ln -s ~/.dotfiles/xfce4/terminalrc ~/.config/xfce4/terminal/terminalrc
