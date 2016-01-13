#!/bin/bash

/usr/local/bin/task sync

echo "taskwarrior sync completed: $(date --iso-8601=seconds -u)" >> $HOME/.task/task-sync.log
