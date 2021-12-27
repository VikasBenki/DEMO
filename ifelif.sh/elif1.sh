#!/bin/bash -x
read -p "Enter single digit number : " N;
if [ $N -eq 0 ]
then
echo "zero";
elif [ $N -eq 1 ]
then
echo "one";
elif [ $N -eq 2 ]
then

echo "Two";
elif [ $N -eq 3 ]
then
echo "Three";
elif [ $N -eq 4 ]
then
echo "Four";
elif [ $N -eq 5 ]
then
echo "Five";
elif [ $N -eq 6 ]
then
echo "Six";
elif [ $N -eq 7 ]
then
echo "seven";
elif [ $N -eq 8 ]
then
echo "eight";
elif [ $N -eq 9 ]
then
echo "nine";
else
echo "Wrong Value";
fi