#!/bin/bash

read -p "String 1: " str1
read -p "String 2: " str2

if [ "$Str1" = "$Str2" ]
then
	echo "Strings are eq"
else 
	echo "String is not eq"
fi
if [ "$Str1" == "$Str2" ]
then
	echo "Strings are eq"
else 
	echo "String is not eq"
fi
if [[ "$Str1" != "$Str2" ]];then
	echo "String is not ep"
fi


string="Nowaday, linux is more popular to many people in the world"

if [[ "$string" == *"linux"* ]];then
	echo "linux is there"
fi


