#!/bin/bash

apt-get install -y git
wait
mkdir /root/git-files
cd /root/git-files
git clone https://github.com/ersanchez/bin.git
