#!/bin/bash
set -x # echo on


echo "Installing dotfiles"

cd ~

echo "Install all required programs"

echo "Install other programs: "
sudo apt-get install tmux neovim git hub zsh wget xclip build-essential cmake python-dev python3-dev direnv ripgrep rofi redshift-gtk fasd bat

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cd ~

# Install FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install



# Install powerline font
mkdir -p ~/.fonts/
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf -P ~/.fonts
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/
wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf -P ~/.config/fontconfig/conf.d/

# Plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#  asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1


# Install vim plugins - now manually
# Install hub: https://github.com/github/hub/releases

echo "Initializing submodule(s)"
git submodule update --init --recursive

source link.sh

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Done."

# Install neovim https://neovim.io/doc/user/nvim.html#nvim-from-vim
# if stdpath does not work, create it manually
# https://neovim.io/doc/user/starting.html#config


# install python-nvim
sudo pip2 install --upgrade neovim
sudo pip3 install --upgrade neovim

# Also install node
npm install --global prettier
npm install tslint typescript -g
