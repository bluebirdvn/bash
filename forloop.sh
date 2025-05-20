#!/bin/bash
for os in Ubuntu Pop!_OS Slackware Kali "Mx Linux"
do
	echo "os is $os "
done
for num in {1..10..5}
do 
	echo "num is $num"
	touch "./$num.txt"
done




