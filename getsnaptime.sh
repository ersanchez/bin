#!/bin/sh
zfs get -H -o name,value creation `zfs list -H -o name -t snapshot`
