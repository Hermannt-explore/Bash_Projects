#!/bin/bash
#Counting score if Fucked


clear
echo "Type in the number which matches your answer, then press ENTER."
echo " "
sleep 2s
echo "Remember, you can enter \"Q\" to quit the game."
echo " "
wrong=0		#the number of times the user entered the wrong answer.
fun1=0
upset=0
sleep 1s

#Question1
echo "Question1:"
echo "what was the first social media platform ever?"

PS3=''
select Ans in "Don't worry" "Friendster" "Myspace" "Six Degrees" "Quit Game"
do
	if [[ "$Ans" != "Six Degrees" ]] && [[ "$Ans" != "Quit Game" ]]
	then
		wrong=$((++$wrong))
		echo "Wrong answer!"	
		break
	elif [[ "$Ans" != "Six Degrees" ]] && [[ "$Ans" == "Quit Game" ]]
	then
		echo "See ya next time!"
		exit 0
	else
		echo "Correct!"
		fun1=1
		break
	fi
done

echo " "
sleep 1s

#Question2
echo "Question2:"
if [[ $fun1 -eq 1 ]]
then
	echo "How old are you??"
	select Ans in "Forever" "Too old" "Yes"  "Quit Game"
	do
		if [[ "$Ans" != "Quit Game" ]]
		then
			echo "Oh, that's why you know about Six Degrees!"	
			upset=0
			break
		else
			upset=1
			echo "Awww"
			echo "I was only kidding :) ..."
			echo " "
			break			
		fi
	done
	if [[ "$upset" -eq 1 ]] 
	then

	echo "Cereal or Milk first?"
	select Ans in "Cereal" "Milk" "Yes"  "Quit Game"
	do
		if [[ "$Ans" != "Yes" ]]
		then
			if [[ "$Ans" == "Quit Game" ]]
			then
				exit 0
			elif [[ "$Ans" == "Milk" ]]
			then
				wrong=$((++$wrong))
				echo "Milk goes first!"
				break
			else
				wrong=$((++$wrong))
				echo "Cereal goes first!"
				break
			fi
		else
			echo "Correct!"
			break
		fi
	done	
	fi
else
echo "Is water wet?"
select Ans in "Yes" "Maybe" "Water is moist" "No, it's science" "Quit Game"
do
	if [[ "$Ans" != "No, it's science" ]]
	then
			if [[ "$Ans" == "Quit Game" ]]
		then
			exit 0
		else
			wrong=$((++$wrong))
			echo "Wrong answer!"
			break
		fi
	else
		echo "Correct!"
		break
	fi
done
fi

echo " "
sleep 1s

#Question3
echo "Question3:"
echo "what color is blood?"

select Ans in "Icy blue" "ULTRAVIOLET" "Red" "Pink-ish" "Quit Game"
do
	if [[ "$Ans" != "Red" ]]
	then
		if [[ "$Ans" == "Quit Game" ]]
		then
			exit 0
		else
			wrong=$((++$wrong))
			echo "Wrong answer!"
			break
		fi
	else
		echo "Correct!"
		break
	fi
done

echo " "
sleep 1s

#Question5
echo "Question5:"
echo "what is the point of life?"

select Ans in "Why?" "This game" "Yes" "Nothing" "Quit Game"
do
	if [[ "$Ans" != "This game" ]]
	then
			if [[ "$Ans" == "Quit Game" ]]
		then
			exit 0
		else
			wrong=$((++$wrong))
			echo "Wrong answer!"
			break
		fi
	else
		echo "Correct!"
		break
	fi
done

sleep 1s

bash score.sh
