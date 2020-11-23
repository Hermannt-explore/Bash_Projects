#!/bin/bash
#include <sys/types.h>
#include<sys/wait.h>
#This is the main menu.

loop=1
echo "Welcome to my guessing game"
#sleep 2s
echo " "
echo "the objective of the game is to answer 3 out of 5 questions correctly."
#sleep 3s
echo " "

echo "Ready? [press \"Y\" to start or \"q\" to quit]"
wrongIn=0
while [ $loop -eq 1 ]
do
	if [[ $wrongIn -eq 1 ]]
	then
		echo  "[press \"Y\" to start or \"q\" to quit]"
	fi
	read input
	if [[ $input != "Y" ]] && [[ $input != "y" ]] &&  [[ $input != "q" ]] &&  [[ $input != "Q" ]]
	then
		wrongIn=1
		continue

	elif [[ "$input" == "Y" ]] || [[ "$input" == "y" ]]
	then
		#wait
		bash Questions.sh
		exit 0
	else
		loop=0
		echo "Maybe next time..."
		break
	fi
done
#main menu is complete
