#!/bin/bash
#the Questions are ALL the same
wrong=0

#Question1
echo "Question1:"
echo "what is the point of life?"

select Ans in "Yes" "No" "Don't worry" "Nothing" "huh?"
do
	if [[ "$Ans" != "huh?" ]]
	then
		wrong=$((++$wrong))
		echo "Wrong answer!"
		break
	else
		echo "Correct!"
	fi
done

#Question2
echo "Question2:"
echo "what is the point of life?"

select Ans in "Yes" "No" "Don't worry" "Nothing" "huh?"
do
	if [[ "$Ans" != "huh?" ]]
	then
		wrong=$((++$wrong))
		echo "Wrong answer!"
		break
	else
		echo "Correct!"
	fi
done

#Question3
echo "Question3:"
echo "what is the point of life?"

select Ans in "Yes" "No" "Don't worry" "Nothing" "huh?"
do
	if [[ "$Ans" != "huh?" ]]
	then
		wrong=$((++$wrong))
		echo "Wrong answer!"
		break
	else
		echo "Correct!"
	fi
done

#Question4
echo "Question4:"
echo "what is the point of life?"

select Ans in "Yes" "No" "Don't worry" "Nothing" "huh?"
do
	if [[ "$Ans" != "huh?" ]]
	then
		wrong=$((++$wrong))
		echo "Wrong answer!"
		break
	else
		echo "Correct!"
	fi
done

#Question5
echo "Question5:"
echo "what is the point of life?"

select Ans in "Yes" "No" "Don't worry" "Nothing" "huh?"
do
	if [[ "$Ans" != "huh?" ]]
	then
		wrong=$((++$wrong))
		echo "Wrong answer!"
		break
	else
		echo "Correct!"
	fi
done

