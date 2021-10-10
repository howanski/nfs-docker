#!/bin/sh
mkdir -p /run/openrc/
touch /run/openrc/softlevel
rc-status
rc-service nfs start
echo "I'll restart nfs daemon every 5 minutes."
while [ true ]
do
    sleep 300
    echo "--=== running planned restart ===--"
    rc-service nfs restart
done
