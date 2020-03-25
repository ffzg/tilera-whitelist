all:
	./11-get-fail2ban.sh
	./12-get-public_blacklist.sh
	./2-hr-unblock.sh
	./80-whitelist-cdir.sh
	./99-unban-on-syslog.sh
