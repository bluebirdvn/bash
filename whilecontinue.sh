#!/bin/bash

for i in {1..15};do
	result=$(( i % 2 ))
	if [[ $result -eq 0 ]]
	then
		continue
	fi
	echo $i
done

