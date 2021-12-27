#!/bin/bash -x
read -p "Enter number to print unit ten hundered ... : " N;
case $N in
1) echo "Unit";;
10) echo "Ten";;
100) echo "Hundere";;
1000) echo "Thousand";;
10000) echo "Ten Thousands";;
100000) echo "Lakh";;
*) echo "Wrong value ";;
esac