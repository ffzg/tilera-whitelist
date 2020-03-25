#!/bin/sh -xe

grep -v ';;;' /dev/shm/fail2ban /dev/shm/public_blacklist | \
	awk '{ print $3 " " $2 }' | sort -u | grep -v LIST | tee /dev/shm/ip.list | awk '{ print $1 }' | \
	xargs -i sh -c 'geoiplookup {} | sed "s/^/{} /"' | grep HR | tee /dev/shm/geo.hr | \
	awk '{ print $1 }' > /dev/shm/hr.ips.unblock

grep -f /dev/shm/hr.ips.unblock /dev/shm/ip.list | tee /dev/shm/hr.ip.list.unblock
