#!/bin/bash

while true
do
	ping -c 1 $1 &>logouterr.txt
	if [[ $? -eq 0 ]];then
		echo "OKE"
		"$(cat logouterr.txt)"
	else
		echo "Exiting the while loop"
		break
	fi
	sleep 1
done
echo "ping to $1 is not working, sending mail to server"
