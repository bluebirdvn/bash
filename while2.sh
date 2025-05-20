#!/bin/bash
while ping -c 1 8.8.8.8
do
	echo "ping was successfully"
	sleep 1
done
