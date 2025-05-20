#!/bin/bash
for item in ./*
do
	if [[ -f $item ]];then
		echo "Display the content: "
		sleep 1
		cat $item
		echo "##############"
	fi
done


