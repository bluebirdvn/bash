#!/bin/bash

readarray -t files< <(sudo ls /etc/*)

for f in "${files[@]}"
do
	if [[ -f $f && -r $f ]];then

		cat $f
	fi
done
