#/bin/sh

# Script to automatically configure a headless FreeBSD server

# Install pkg
sudo pkg install -y gnupg
sudo pkg install -y python3
sudo pkg install -y rsync
sudo pkg install -y ruby
sudo pkg install -y ssmtp
sudo pkg install -y testdisk
sudo pkg install -y tmux
sudo pkg install -y vim-lite
sudo pkg install -y wget
sudo pkg install -y xclip
sudo pkg install -y zfstools
