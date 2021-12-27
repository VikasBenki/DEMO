#!/bin/bash -x
isHead=1;
RandomCheck=$(( RANDOM%2 ))
if [ $isHead -eq $RandomCheck ]
then
echo "heads"
else
echo "tails"
fi