#!/bin/bash
set -e  # exit if any command exits with a non-zero (fail) status
apt-get install -y git
mkdir /root/git-files
cd /root/git-files
git clone https://github.com/ersanchez/bin.git
