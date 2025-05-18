#!/bin/bash

PS3="your choice: "
select item in "Add user" "List all processes" "Install program" "Quit"
do
	if [[ $REPLY -eq 1 ]];then
		read -p "Enter user nam" name
		output="$(grep -w $name /etc/passwd)"
		if [[ -n "$ouput" ]];then
			echo "The username extsts"
		else
			sudo useradd -m -s /bin/bash "$username"
			if [[ $? -eq 0 ]];then
				echo "the user $name added success"
				tail -n 1 /etc/passwd
			else
				echo "there was an error"
			fi
		fi

	elif [[ $REPLY -eq 2 ]];then
		echo "listing the processing "
		sleep 1
		ps -ef
	elif [[ $REPLY -eq 3 ]];then
		read -p "Enter the process kill: " process
		pkill $process
	elif [[ $REPLY -eq 4 ]];then
		read -p "Enter the program to install: " app
		sudo apt update && sudo apt install $app -y
	elif [[ $REPLY -eq 5 ]];then
		echo "Quitting..."
		sleep 1
		exit
	else
		echo "invalid menu selection"
	fi

done
