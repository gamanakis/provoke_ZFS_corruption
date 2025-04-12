#!/usr/bin/env bash
# set -x
start=$(/bin/date  +%Y-%m-%d-%H%M%S)
start_s=$(/bin/date +%s)

/bin/time -p syncoid --delete-target-snapshots --recursive --no-privilege-elevation send/test recv/test >"/home/scythe/logs/$start.syncoid.txt" 2>&1

finish_s=$(date +%s)
elapsed=$((finish_s-start_s))
zpool status send >>"/home/scythe/logs/$start.syncoid.txt" 2>&1
mv "/home/scythe/logs/$start.syncoid.txt" "/home/scythe/logs/$start.syncoid.$elapsed.txt"
