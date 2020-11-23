#!/bin/bash


sleep 1s

echo "Your score is /5"
echo "Thank you for playing"
sleep 1s
echo " "
echo "Enter "" for main menu"
echo "Enter "" to Quit"

PS3=''
select Ans in "Main menu" "Quit Game"
do 	
	case $Ans in
	"Main menu")
		bash main_menu.sh
		break
		;;
	"Quit Game")
		exit 0		
	esac



done
