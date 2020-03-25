#!/bin/sh -xe

ssh -i /home/dpavlin/.ssh/mtik/enesej enesej@193.198.212.1 "/ip firewall address-list print where list=fail2ban" | tee /dev/shm/fail2ban
