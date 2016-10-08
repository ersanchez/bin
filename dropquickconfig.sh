#!/bin/bash
#
# !!! DO NOT USE THIS IN PRODUCTION !!!
#
# This is a TESTING-ONLY script to quickly configure a DigitalOcean droplet.
#
# This script does the following things:
# 1. install git
# 2. prompts for the creation of a new user
# 3. configures pre-set SSH keys for the new user ***TESTING-ONLY***
#
# install git
bash <(curl -s https://raw.githubusercontent.com/ersanchez/bin/master/installgit.sh)
# add user
bash <(curl -s https://raw.githubusercontent.com/ersanchez/bin/master/droplet-adduser.sh)
