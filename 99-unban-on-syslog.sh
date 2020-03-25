#!/bin/sh -xe

scp /dev/shm/hr.ip.list.unblock syslog:/tmp/
ssh syslog 'cat /tmp/hr.ip.list.unblock | xargs -i echo /etc/fail2ban/unban.sh {} | sh -x'
