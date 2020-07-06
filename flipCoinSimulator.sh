#!/bin/bash -x

Random=$((RANDOM % 2))
if [ $Random -eq 1 ]
then
        echo "Heads won"
else
        echo "Tails won"
fi
