#!/bin/bash
#
# This shell script sets up Eduardo's working environment on a new 
# Ubuntu machine.
#
# Install applications
sudo apt install -y cmake
sudo apt install -y curl
sudo apt install -y git
sudo apt install -y gnupg2
sudo apt install -y gnutls-bin
sudo apt install -y markdown
sudo apt install -y pv
sudo apt install -y rsync
sudo apt install -y syncthing
sudo apt install -y taskwarrior
sudo apt install -y tmux
sudo apt install -y tree
sudo apt install -y unrar
sudo apt install -y vim-tiny
sudo apt install -y xclip
sudo apt install -y youtube-dl

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
ln -sb $HOME/git-files/dotfiles/.vimrc $HOME/
