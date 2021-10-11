#!/bin/sh
mkdir -p /run/openrc/
touch /run/openrc/softlevel
rc-status
rc-service nfs start
echo "I'll restart nfs daemon every 5 minutes."
while [ true ]
do
    sleep 300
    echo "-----------------------------------"
    echo "--=== running planned restart ===--"
    date
    echo "-----------------------------------"
    rc-service nfs restart
    echo "-----------------------------------"
done
