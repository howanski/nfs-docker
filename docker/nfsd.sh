#!/bin/sh
mkdir -p /run/openrc/
# mkdir -p /lib/modules
touch /run/openrc/softlevel
# rc-update add nfs
rc-status
rc-service nfs start
echo "I'll restart in 24 h! :P"
sleep 86400
