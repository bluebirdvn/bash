#!/bin/bash
PS3="choose your country: "

select country in germany france usa england
do
	case $REPLY in
	1)
		echo "German"
		;;
	2)
		echo "france"
		;;
	3)
		echo "usa"
		;;
	4)
		echo "england"
		;;
	5)
		echo "quitting.."
		sleep 1
		exit
		;;
	*)
		echo "not valid"
		;;
		
	esac

done
