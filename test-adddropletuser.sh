#!/bin/bash
# Create new user
echo "Enter the name of the user to be added: "
read username

echo "Would you like to enter a specific UID? (y/n) "
read quid
if [ $quid = "y" ]; then
	echo "Enter the UID for the new user: "
	read newuseruid
	adduser --uid $newuseruid $username
else
	adduser $username
fi

# Add user to sudoers?
echo "Add new user to sudoers? (y/n) "
read sudodecision
echo $sudodecision
if [ $sudodecision="y" ]; then
	adduser $username sudo
fi

# Configure SSH for new user
#
# DO NOT USE THIS ON A PRODUCTION MACHINE !!TESTING ONLY!!
mkdir /home/$username/.ssh
touch /home/$username/.ssh/authorized_keys
cp /root/.ssh/authorized_keys /home/$username/.ssh/authorized_keys
chmod -R 700 /home/$username/.ssh
chown -R $username /home/$username
chgrp -R $username /home/$username
