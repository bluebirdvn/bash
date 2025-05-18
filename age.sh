#!/bin/bash


output="$(ping -c 3 $1)"
#echo $output

if [[ $output == *"100% packet loss"* ]];then
	echo "the network connection to $1 is not working"
else
	echo "the connectio to $1 is working"
fi
