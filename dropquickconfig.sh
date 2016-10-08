#!/bin/bash
#
# This is a TESTING-ONLY script to quickly configure a DigitalOcean droplet.
#
# !!! DO NOT USE THIS IN PRODUCTION !!!
#
# install git
bash <(curl -s https://raw.githubusercontent.com/ersanchez/bin/master/installgit.sh)
# add user
bash <(curl -s https://raw.githubusercontent.com/ersanchez/bin/master/droplet-adduser.sh)
