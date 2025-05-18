#!/bin/bash

my="abc"
if [[ -z "$my" ]];then
	echo "string is not zero length"
else
	echo "string is zero length"
fi

if [[ -n "$my" ]];then
	echo "string is zero length"
else
	echo "string is not zero length"
fi


