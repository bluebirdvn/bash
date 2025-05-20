#!/bin/bash
for ip in $(cat ips.txt);do
	echo "Drop ip is $ip"
	sudo iptables -I INPUT -s $ip -j DROP
done
