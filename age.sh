#!/bin/bash

echo -n "Enter your favorite pet: "
read pet
case "$pet" in
"dog")
	echo "your fa is dog"
	;;
"cat" | "Cat" | "kitty")
	echo "you like cat"
	;;
fish)
	echo "you like fish"
	;;
*)
	echo "None"
esac

