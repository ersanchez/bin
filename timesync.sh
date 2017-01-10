#!/bin/bash
#
# This script is run after boot on the RaspberryPi to force
# ntpd to correct the time

sudo service ntpd stop
sudo ntpd -gq
sudo service ntpd start
