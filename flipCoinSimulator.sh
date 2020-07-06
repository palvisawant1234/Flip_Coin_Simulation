#!/bin/bash 

Heads=0
Tails=0
Win=0

while [ $Heads -ne 21 ] && [ $Tails -ne 21 ]
do
	Random=$((RANDOM % 2))
	if [ $Random -eq 1 ]
	then
        	echo "Heads won"
		Heads=$(($Heads+1))
	else
        	echo "Tails won"
		Tails=$(($Tails+1))
	fi
done

echo "Heads : $Heads"
echo "Tails : $Tails"

if [ $Heads -gt $Tails ]
then
	Win=$(($Heads-$Tails))
	echo "Heads won by $Win"
elif [ $Tails -gt $Heads ]
then
	Win=$(($Tails-$Heads))
	echo "Tails won by $Win"
else
	echo "Its a tie"
	if [ $Heads -eq $Tails ]
	then
		while true
		do
			temp=$((RANDOM%2))
			if(($temp==1))
			then
				Heads=$(($Heads+1))
			else
				Tails=$(($Tails+1))
			fi
			if [ $(($Heads-$Tails)) -eq 2 ]
			then
				echo "Head wins by 2 and score is:$Heads"
			else
				if [ $(($Tails-$Heads)) -eq 2 ]
				then
					echo "Tail wins by 2 and score is:$Tails"
				fi
			fi
		done
	fi
fi
