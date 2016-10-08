#!/bin/bash
#
# Quickly configure base droplet
# Written for Ubuntu GNU/Linux
#
# !!! FOR TESTING PURPOSES ONLY !!!
#
# Variables
#
# username: name of the new user
#
# Create new user
echo "Enter the name of the user to be added: "
read username
echo $username

echo "Would you like to enter a specific UID? (y/n) "
read quid
echo $quid
if [ $quid = "y" ]; then
	echo "Enter the UID for the new user: "
	read newuseruid
	echo $newuseruid
	adduser --uid $newuseruid $username
else
	adduser $username
fi

echo "Add new user to sudoers? (y/n) "
read sudodecision
echo $sudodecision
if [ $sudodecision="y" ]; then
	adduser $username sudo
fi
