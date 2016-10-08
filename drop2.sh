#!/bin/bash

if "apt-get install -y git" ; then
    echo "Git installation successful"
else
    echo "Git installation failed"
fi

mkdir /root/git-files
cd /root/git-files
git clone https://github.com/ersanchez/bin.git
