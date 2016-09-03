#!/bin/bash
#
# This shell script sets up Eduardo's working environment on a new 
# Ubuntu machine.
#
# Install applications
sudo apt install -y abcde
sudo apt install -y cmake
sudo apt install -y curl
sudo apt install -y fonts-inconsoloata
sudo apt install -y git
sudo apt install -y gnupg2
sudo apt install -y gnutls-bin
sudo apt install -y goldendict
sudo apt install -y gparted
sudo apt install -y keepass2
sudo apt install -y lyx
sudo apt install -y markdown
sudo apt install -y mono-complete
sudo apt install -y nfs-common
sudo apt install -y okular
sudo apt install -y pandoc
sudo apt install -y par2
sudo apt install -y pv
sudo apt install -y rsync
sudo apt install -y shutter
sudo apt install -y synaptic
sudo apt install -y syncthing
sudo apt install -y taskwarrior
sudo apt install -y tmux
sudo apt install -y tree
sudo apt install -y ubuntu-mate-welcome
sudo apt install -y unrar
sudo apt install -y vim
sudo apt install -y vlc
sudo apt install -y xclip
sudo apt install -y youtube-dl

# git pull dotfiles
cd $HOME
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi
# git install dotfiles
git clone https://github.com/ersanchez/dotfiles.git
ln -sb git-files/dotfiles/.abcde .
ln -sb git-files/dotfiles/.bash_logout .
ln -sb git-files/dotfiles/.bash_profile .
ln -sb git-files/dotfiles/.bashrc .
ln -sb git-files/dotfiles/.bashrc_custom .
ln -sb git-files/dotfiles/.gitconfig .
ln -sb git-files/dotfiles/.gitignore_global .
ln -sb git-files/dotfiles/.profile .
ln -sb git-files/dotfiles/.tmux.conf .
ln -sb git-files/dotfiles/.vimrc .
