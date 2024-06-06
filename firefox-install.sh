#!/bin/bash

# Firefox
wget -O /tmp/firefox-latest.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US";\
tar xjf /tmp/firefox-latest.tar.bz2 -C /tmp/;\
sudo apt-get remove firefox --purge -y;\
sudo dpkg -i /tmp/firefox*.deb;\
rm /tmp/firefox-latest.tar.bz2;\
rm /tmp/firefox*.deb
