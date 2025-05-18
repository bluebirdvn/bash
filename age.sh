#!/bin/bash
read -p "Enter your age: " age

if [[ $age -lt 18 && $age -ge 0 ]]
then 
	echo "you are young"
elif [[ $age -eq 18 ]]
then 
	echo "you are same me"
elif [[ $age -gt 18 && $age -le 100 ]]
then	
	echo "you are senior"
else
	echo "age not valid"
fi
