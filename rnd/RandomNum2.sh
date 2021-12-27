#!/bin/bash -x
DiceNum=$((RANDOM%6));
if [ $DiceNum -ne 0 ]
then
	echo $DiceNum;
fi