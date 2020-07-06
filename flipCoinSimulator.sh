#!/bin/bash 

echo Enter the number of times to flip a coin
read n

for((i=0 ; i<$n ; i++))
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

if [ $Heads -lt $Tails ]
then
	echo "Tails won by $Tails score"
else
	echo "Heads won by $Heads score"
fi
