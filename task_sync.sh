#!/bin/bash

/usr/local/bin/task sync

echo "taskwarrior sync completed: $(date +%Y-%m-%dT%R:%S)" >> $HOME/.task/task-sync.log
