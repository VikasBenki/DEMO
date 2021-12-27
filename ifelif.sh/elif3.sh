#!/bin/bash -x

read -p "Enter value : " V;
if [ $V -eq 1 ]
then
echo "Unit";
elif [ $V -eq 10 ]
then
echo "Ten";
elif [ $V -eq 100 ]
then
echo "Hundereds";
elif [ $V -eq 1000 ]
then
echo "Thousands";
else
echo "plz enter correct value"
fi