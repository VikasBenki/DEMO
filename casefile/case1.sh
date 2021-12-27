#!/bin/bash -x
read -p "Enter a number between 0 to 9" N;
case $N in
0) echo "zero";;
1) echo "one";;
2) echo "two";;
3) echo "three";;
4) echo "four";;
5) echo "five";;
6) echo "six";;
7) echo "seven";;
8) echo "eight";;
9) echo "nine";;
*) echo "not a valid number";;
esac