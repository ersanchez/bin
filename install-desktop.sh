#!/bin/bash
#
# This shell script sets up Eduardo's working environment on a new 
# Ubuntu machine.
#
# run this by typing:
#  wget https://raw.githubusercontent.com/ersanchez/bin/master/install-desktop.sh
#  chmod 755 install-desktop.sh
#  ./install-desktop.sh
#
# Install applications
sudo apt install -y abcde
sudo apt install -y cmake
sudo apt install -y fonts-inconsolata
sudo apt install -y geany
sudo apt install -y geany-plugin-lipsum
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
sudo apt install -y peek
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
