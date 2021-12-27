#!/bin/bash -x
read -p "Enter single digit number : " N;
if [ $N -eq 0 ]
then
echo "Sunday";
elif [ $N -eq 1 ]
then
echo "Monday";
elif [ $N -eq 2 ]
then
echo "Tuesday";
elif [ $N -eq 3 ]
then
echo "Wednesday";
elif [ $N -eq 4 ]
then
echo "Thursday";
elif [ $N -eq 5 ]
then
echo "Friday";
elif [ $N -eq 6 ]
then
echo "Saturday";
else
echo "Wrong Value";
fi