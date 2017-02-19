#!/bin/bash
#
# script to config a brand new Ubuntu installation
#
# What it does:
# * installs apps (minimal listing)
# * creates directories
# * clones github repos
# * link dotfiles to github dotfiles
#
# run this by typing:
#  wget https://raw.githubusercontent.com/ersanchez/bin/master/install-desktop-minimum.sh
#  chmod 755 install-desktop-minimum.sh
#  ./install-desktop-minimum.sh
#
# Install applications
sudo apt install -y ecryptfs-utils
sudo apt install -y git
sudo apt install -y gparted
sudo apt install -y nfs-common
sudo apt install -y pv
sudo apt install -y tmux
sudo apt install -y traceroute
sudo apt install -y tree
sudo apt install -y whois
sudo apt install -y xclip

echo "apps installed!" >> $HOME/install.log

# make directories
mkdir $HOME/git-files/

echo "git-files directory created!" >> $HOME/install.log

# git pull dotfiles

if [ -d $HOME/git-files/dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi

# link dotfiles to git repo
cd $HOME/git-files/
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
