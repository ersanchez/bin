#!/bin/bash

# The purpose of this script is to configure a fresh install such that
# typical /home/user folders are linked to Syncthing folders that are
# synchronized with other user computers.

# It is intended to be run on a GNU/Linux distribution - Ubuntu.

directories=(
  '$HOME/bin'
  '$HOME/Documents'
  '$HOME/Music'
  '$HOME/Pictures'
  '$HOME/Public'
  '$HOME/Templates'
  '$HOME/Videos'
)

# To Do: include section to backup existing directories
#    This will save my bacon if accidentally run on 
#    home directory with existing files.

for filename in "${directories[@]}"; do
  # Delete the existing directory
  rm -rf "$directories"
  # Replace it with a hard link to the Dropbox file
  ln $HOME/ #need to complete this symbolic linking
done
