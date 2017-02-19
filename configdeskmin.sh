#!/bin/bash
#
# This script kicks off a minimal config of new Ubuntu installation
#
# Run it by typing this:
# $ wget http://goo.gl/VBMFtV
# make it executable
# run it!
#
#
applications()
{
  # This installs the applications
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
  echo "applications have been installed" >> $HOME/install.log
}

directories()
{
  mkdir -p $HOME/git-files/bin
  mkdir -p $HOME/git-files/dotfiles
  echo "directories have been created" >> $HOME/install.log
}

clonerepos()
{
  if [ -d $HOME/git-files/bin/ ]; then
    mv dotfiles bin.old
  fi

  if [ -d $HOME/git-files/dotfiles/ ]; then
    mv dotfiles dotfiles.old
  fi

  git clone https://github.com/ersanchez/bin.git
  git clone https://github.com/ersanchez/dotfiles.git

  echo "repositories have been cloned" >> $HOME/install.log
}

link()
{
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
  echo "dotfiles have been linked" >> $HOME/install.log
}

applications
directories
clonerepos
link
