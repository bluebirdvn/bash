#!/bin/bash

while true
do
	output="$(pgrep -l $1)"
	if [[ -n "$output" ]];then
		echo "the process \"$1\" is running"
	else
		echo "the process \"$1\" is not running"
	fi
	sleep 3
done
