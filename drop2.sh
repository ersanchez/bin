#!/bin/bash
set -e
apt-get install -y git
mkdir /root/git-files
cd /root/git-files
git clone https://github.com/ersanchez/bin.git
