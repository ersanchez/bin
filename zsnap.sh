#!/bin/sh
#
# requests a file system from the user
# takes a snapshot of the specified file system
# appends a date/timestamp (UTC) using the 'date' builtin

CURRENT_TIME=$(date -u "+%Y-%m-%dZ%H-%M-%S")

echo -n "Type the zfs filesystem to snapshot (timestamp will be appended): "
read ZFSTOSNAP

sudo zfs snapshot -r $ZFSTOSNAP@$CURRENT_TIME

