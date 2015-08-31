#!/bin/sh

# Purpose: send an email notification if zpool is not healthy

# loosely based on 
# http://lawrit.lawr.ucdavis.edu/itdocs/it/how-to/automated-alerts-and-scrubbing-for-zfs-pools

# Variables

poolstatus=`zpool status -x`
poolhost=`hostname -s`
notifyemail=`cat /home/ers/doc/notification-email`
notifysms=`cat /home/ers/doc/notification-sms`
notifymsg=`cat /home/ers/doc/notification-sms-msg`

# check status
# send email if not healthy
if [ "$poolstatus" != "all pools are healthy" ] ; then
	zpool status | mailx -s "ZPOOL ERROR on $poolhost" $notifyemail
fi

# send text message to phone if not healthy
if [ "$poolstatus" != "all pools are healthy" ] ; then
	echo " " | mailx -s "ZPOOL ERROR on $poolhost" $notifysms
fi
