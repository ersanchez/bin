#!/bin/bash

sudo rm /etc/machine-id       # deletes default machine-id
sudo systemd-machine-id-setup # adds a new/random machine-id
