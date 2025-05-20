#!/bin/bash

readarray acount< <(cat ./users.txt)
for a in "${acount[@]}"
do
	user=$(echo $a | cut -d: -f1)
	group=$(echo $a | cut -d: -f2)
	if [[ -z "$(grep -w $group etc/group)" ]];then
		sudo groupadd $group
		echo "Group $group added successfully"
	else
		echo" Group $group already exits"
	fi
	if [[ -z "$(grep -w $user /etc/passwd)" ]];then
		sudo useradd $user
		echo "User $user added successfully"
	else
		echo "user already exist"
	fi
	echo "#######"
	sleep 1
done
