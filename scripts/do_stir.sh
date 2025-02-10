#!/usr/bin/env bash

start=$(/bin/date  +%Y-%m-%d-%H%M)
start_s=$(/bin/date +%s)

/bin/time -p stir_pool.sh >"/home/scythe/logs/$start.stir_pools.txt" 2>&1

finish_s=$(/bin/date +%s)
elapsed=$((finish_s-start_s))
zpool status send >>"/home/scythe/logs/$start.stir_pools.txt" 2>&1
mv "/home/scythe/logs/$start.stir_pools.txt" \
    "/home/scythe/logs/$start.stir_pools.$elapsed.txt"
