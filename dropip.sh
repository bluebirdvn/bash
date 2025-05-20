#!/bin/bash
#for ip in $(cat ips.txt);do
#	echo "Drop ip is $ip"
#	sudo iptables -I INPUT -s $ip -j DROP
#done


while read ip
do
	echo "Drop packets from ip $ip"
	sudo iptables -I INPUT -s $ip -j DROP
	sleep 0.5
done < ./ips.txt
