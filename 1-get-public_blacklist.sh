ssh -i /home/dpavlin/.ssh/mtik/enesej enesej@193.198.212.1 "/ip firewall address-list print where list=public_blacklist" | tee /dev/shm/public_blacklist
