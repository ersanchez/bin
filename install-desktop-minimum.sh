#!/bin/bash
#
# Script to install minimum programs for desktop virtual machine
#
# run this by typing:
#  wget https://raw.githubusercontent.com/ersanchez/bin/master/install-desktop-minimum.sh
#  chmod 755 install-desktop.sh
#  ./install-desktop.sh
#
# Install applications
sudo apt install -y cmake
sudo apt install -y ecryptfs-utils
sudo apt install -y fonts-inconsolata
sudo apt install -y gnutls-bin
sudo apt install -y goldendict
sudo apt install -y gparted
sudo apt install -y markdown
sudo apt install -y nfs-common
sudo apt install -y okular
sudo apt install -y pv
sudo apt install -y rsync
sudo apt install -y shutter
sudo apt install -y synaptic
sudo apt install -y taskwarrior
sudo apt install -y tmux
sudo apt install -y tree
sudo apt install -y ubuntu-mate-welcome
sudo apt install -y vim
sudo apt install -y xclip

# git pull dotfiles
cd $HOME/
if [ -d $HOME/git-files/dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi
# git install dotfiles
cd $HOME/
git clone https://github.com/ersanchez/dotfiles.git
ln -sb $HOME/git-files/dotfiles/.abcde $HOME/
ln -sb $HOME/git-files/dotfiles/.bash_logout $HOME/
ln -sb $HOME/git-files/dotfiles/.bash_profile $HOME/
ln -sb $HOME/git-files/dotfiles/.bashrc $HOME/
ln -sb $HOME/git-files/dotfiles/.bashrc_custo $HOME/
ln -sb $HOME/git-files/dotfiles/.gitconfig $HOME/
ln -sb $HOME/git-files/dotfiles/.gitignore_global $HOME/
ln -sb $HOME/git-files/dotfiles/.profile $HOME/
ln -sb $HOME/git-files/dotfiles/.tmux.conf $HOME/
ln -sb $HOME/git-files/dotfiles/.vim $HOME/
ln -sb $HOME/git-files/dotfiles/.vimrc $HOME/
