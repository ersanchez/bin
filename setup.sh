#!/bin/bash
# This shell script sets up Eduardo's working environment on a new 
# Ubuntu machine.

# Install applications
#sudo apt-get install -y abcde
sudo apt-get install -y curl
sudo apt-get install -y git
sudo apt-get install -y pandoc
sudo apt-get install -y tmux
sudo apt-get install -y vim
sudo apt-get install -y xclip

# git pull dotfiles
cd $HOME
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi
# git install dotfiles
git clone https://github.com/ersanchez/dotfiles.git
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
ln -sb dotfiles/.tmux.conf .
ln -sb dotfiles/.vimrc .
