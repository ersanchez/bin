#!/bin/bash
#
# This shell script sets up Eduardo's working environment on a new 
# Ubuntu machine.
#
# Install applications
#sudo apt-get install -y abcde
sudo apt-get install -y curl
sudo apt-get install -y git
sudo apt-get install -y pandoc
sudo apt-get install -y synaptic
sudo apt-get install -y tmux
sudo apt-get install -y vim
sudo apt-get install -y xclip
sudo apt-get install -y youtube-dl
sudo apt-get install -y fonts-inconsoloata
sudo apt-get install -y cmake
sudo apt-get install -y gnutls-bin
sudo apt-get install -y pv
sudo apt-get install -y xclip

# Install syncthing
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt-get update
sudo apt-get install syncthing

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
