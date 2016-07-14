#!/bin/bash

# Perform taskwarrior sync 
/usr/bin/task sync

# Check to see if sync was successful
if [ $? == 0 ]

# Note success or fail to log
then echo -e "$(date --iso-8601=seconds -u) - successful sync" >> /home/ers/log/cron_tasksync 
else echo -e "$(date --iso-8601=seconds -u) - sync failed" >> /home/ers/log/cron_tasksync
fi
