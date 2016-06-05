#!/bin/bash
#
# This shell script sets up Eduardo's working environment on a new 
# Ubuntu machine.
#
# Install applications
sudo apt-get install -y abcde
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
sudo apt-get install -y taskwarrior
sudo apt-get install -y gnupg2
sudo apt-get install -y gparted
sudo apt-get install -y lyx
sudo apt-get install -y markdown
sudo apt-get install -y nfs-common
sudo apt-get install -y okular
sudo apt-get install -y par2
sudo apt-get install -y unrar
sudo apt-get install -y rsync
sudo apt-get install -y shutter
sudo apt-get install -y syncthing
sudo apt-get install -y tor-browser
sudo apt-get install -y ubuntu-mate-welcom
sudo apt-get install -y vlc
sudo apt-get install -y goldendict
sudo apt-get install -y tree
sudo apt-get install -y syncthing
sudo apt-get install -y ubuntu-mate-welcome

# git pull dotfiles
cd $HOME
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi
# git install dotfiles
git clone https://github.com/ersanchez/dotfiles.git
ln -sb dotfiles/.abcde .
ln -sb dotfiles/.bash_logout .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
ln -sb dotfiles/.gitconfig .
ln -sb dotfiles/.gitignore_global .
ln -sb dotfiles/.profile .
ln -sb dotfiles/.tmux.conf .
ln -sb dotfiles/.vimrc .
