#!/bin/bash

# This script resets the hostname by:
#  1. prompting the user to enter a new hostname
#  2. applying that new hostname

#update_etc_hosts() {
#    local new_hostname=$1
#    local old_hostname=$(hostname)

    # update /etc/hosts with the new hostname
#    sed -i "s/$old_hostname/$new_hostname/g" /etc/hosts
#}
local new_hostname=$1
local old_hostname=$(hostname)

# Prompt the user for the new hostname
read -p "Enter the new hostname: " new_hostname

# Setup the new hostname using systemd
hostnamectl set-hostname "$new_hostname"

# Update the /etc/hosts file using the function at the top
#update_etc_hosts "$new_hostname"
sed -i "s/$old_hostname/$new_hostname/g" /etc/hosts

# Restart systemd-hostnamed service
systemctl restart systemd-hostnamed

# Echo the new hostname
echo "The hostname has been updated to: " $(hostname)
