#!/bin/bash

#/usr/local/bin/task sync

#echo -e "$(date --iso-8601=seconds -u)\n" >> /home/ers/log/cron_tasksync

# Perform taskwarrior sync and log only successful sync

/usr/bin/task sync && echo -e "$(date --iso-8601=seconds -u)\n" >> /home/ers/log/cron_tasksync
