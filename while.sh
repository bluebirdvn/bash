#!/bin/bash

i=0
while [[ $i -lt 10 ]];do
	echo "i is $i"
	(( i++ ))
done
while [[ 1 -eq 1 ]];do
	sleep 1
	echo "Infinite loop, press ctrl C to extit"
done
