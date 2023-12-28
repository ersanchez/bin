#!/bin/bash
#
# This shell script sets up Eduardo's working environment on a new
# Ubuntu machine.
#
# run this by typing:
#  wget https://raw.githubusercontent.com/ersanchez/bin/master/installdesktop.sh
#  chmod 755 installdesktop.sh
#  ./installdesktop.sh
#
# Install applications
# To do: cluster these install lines into one command; make subsequent
#   command run only after pkg installation is done

sudo apt update

sudo apt install -y git
sudo apt install -y abcde
sudo apt install -y anki
sudo apt install -y audacity
sudo apt install -y autokey-gtk
sudo apt install -y bleachbit
sudo apt install -y brasero
sudo apt install -y byzanz
sudo apt install -y calibre
sudo apt install -y cdparanoia
sudo apt install -y chirp
sudo apt install -y chromium-browser
sudo apt install -y clementine
sudo apt install -y cmake
sudo apt install -y curl
sudo apt install -y dateutils
sudo apt install -y dia
sudo apt install -y diceware
sudo apt install -y ecryptfs-utils
sudo apt install -y flac
sudo apt install -y fonts-inconsolata
sudo apt install -y gddrescue
sudo apt install -y geany
sudo apt install -y geany-plugin-lipsum
sudo apt install -y gimp
sudo apt install -y gnome-clocks
sudo apt install -y gnome-disk-utility
sudo apt install -y gnome-mpv
sudo apt install -y gnucash
sudo apt install -y gnupg2
sudo apt install -y gnutls-bin
sudo apt install -y goldendict
sudo apt install -y gparted
sudo apt install -y gthumb
sudo apt install -y guvcview
sudo apt install -y gufw
sudo apt install -y handbrake
sudo apt install -y htop
sudo apt install -y inkscape
sudo apt install -y kazam
sudo apt install -y kdenlive
sudo apt install -y keepassxc
sudo apt install -y libreoffice
sudo apt install -y lynx
sudo apt install -y lyx
sudo apt install -y makemkv-oss
sudo apt install -y markdown
sudo apt install -y mate-desktop-environment
sudo apt install -y md5deep
sudo apt install -y meld
sudo apt install -y mono-complete
sudo apt install -y mplayer
sudo apt install -y mpv
sudo apt install -y nemo
sudo apt install -y newsboat
sudo apt install -y nfs-common
sudo apt install -y nmap
sudo apt install -y okular

sudo apt install -y openvpn
sudo apt install -y pandoc
sudo apt install -y par2
sudo apt install -y pdfarranger
sudo apt install -y peek
sudo apt install -y picard
sudo apt install -y powerline
sudo apt install -y psensor
sudo apt install -y pv
sudo apt install -y python
sudo apt install -y python3
sudo apt install -y remmina
sudo apt install -y retext
sudo apt install -y ring
sudo apt install -y rsync
sudo apt install -y sabnzbdplus
sudo apt install -y scribus
sudo apt install -y shutter
sudo apt install -y signal-desktop
sudo apt install -y simplescreenrecorder
sudo apt install -y snapd
sudo apt install -y synapse
sudo apt install -y synaptic
sudo apt install -y syncthing
sudo apt install -y taskwarrior
sudo apt install -y tlp
sudo apt install -y tmux
sudo apt install -y torsocks
sudo apt install -y traceroute
sudo apt install -y transmission
sudo apt install -y tree
sudo apt install -y ubuntu-mate-welcome
sudo apt install -y ufw
sudo apt install -y uptimed
sudo apt install -y unrar
sudo apt install -y vim
sudo apt install -y virtualbox
sudo apt install -y virt-manager
sudo apt install -y vlc
sudo apt install -y vokoscreen
sudo apt install -y whois
sudo apt install -y wifi-radar
sudo apt install -y wine64
sudo apt install -y xclip

sudo snap install bitwarden
sudo snap install spotify
#sudo snap install vidcutter
sudo snap install youtube-dl-snap


# create git repo
mkdir -p $HOME/git-files/

# git pull dotfiles
cd $HOME/
# prevent blowing away existing dotfiles
if [ -d $HOME/git-files/dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi
# git install dotfiles
cd $HOME/git-files

git clone https://github.com/ersanchez/dotfiles.git

ln -sb $HOME/git-files/dotfiles/.abcde.conf $HOME/
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

# Not included
# http://kryogenix.org/code/pick/
# http://www.omgubuntu.co.uk/2016/08/peek-desktop-gif-screen-recorder-linux
# app images: openshot, standard notes, etc

if [ -d $HOME/bin ]; then
    mv $HOME/bin $HOME/bin-old
    fi
if [ -d $HOME/Documents ]; then
    mv $HOME/Documents $HOME/docs-old
    fi
if [ -d $HOME/Music ] ; then
    mv $HOME/Music $HOME/music-old
    fi
if [ -d $HOME/Pictures ] ; then
    mv $HOME/Pictures $HOME/pictures-old
    fi
if [ -d $HOME/Public ]; then
    mv $HOME/Public $HOME/public-old
    fi
if [ -d $HOME/Videos ]; then
    mv $HOME/Videos $HOME/videos-old
    fi

mkdir $HOME/.st-bin 
mkdir $HOME/.st-doc
mkdir $HOME/.st-mus 
mkdir $HOME/.st-pic 
mkdir $HOME/.st-pub 
mkdir $HOME/.st-vid
echo "Directories created"

ln -sb $HOME/sync/.st-bin $HOME/bin
ln -sb $HOME/sync/.st-doc $HOME/Documents
ln -sb $HOME/sync/.st-mus $HOME/Music
ln -sb $HOME/sync/.st-pic $HOME/Pictures
ln -sb $HOME/sync/.st-pub $HOME/Public
ln -sb $HOME/sync/.st-vid $HOME/Videos
echo "links created"

rm $HOME/installdesktop.sh
