#!/bin/bash

i=0
while [[ $i -lt 7 ]];do
	echo "i is $i"
	(( i++ ))
	if [[ $i -eq 5 ]];then
		echo "i is $i and exit"
		break
	fi
done


