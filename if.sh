#!/bin/bash
if [ -f "$1" ]
then
	echo "The argument is a file"
	sleep 1
	cat $1
elif [ -d "$1" ]
then
	echo "The argument is directory, running ls"
	sleep 1
	ls -l $1
else
	echo "The argument ($1) is neither a file nor a dirctory"
fi
