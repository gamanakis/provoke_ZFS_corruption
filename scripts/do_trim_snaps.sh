#!/usr/bin/env bash

# Just to write the logs

start=$(/bin/date  +%Y-%m-%d-%H%M)
start_s=$(/bin/date +%s)

/bin/time -p trim_snaps.sh >"/home/scythe/logs/$start.trim_snaps.txt" 2>&1

finish_s=$(/bin/date +%s)
elapsed=$((finish_s-start_s))
mv "/home/scythe/logs/$start.trim_snaps.txt" \
    "/home/scythe/logs/$start.trim_snaps.$elapsed.txt" 2>/dev/null
