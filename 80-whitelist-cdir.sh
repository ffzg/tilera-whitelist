#!/bin/sh -xe

(
	cat /dev/shm/hr.ip.list.unblock | awk '{ print $1 }' | xargs -i jwhois {} | grep route: | awk '{ print $2 }'
	cat /etc/whitelist.cdir
) | sort -u > /etc/whitelist.cdir.new
cd /etc/
vi -d /etc/whitelist.cdir{,.new}

scp /etc/whitelist.cdir syslog:/tmp/
