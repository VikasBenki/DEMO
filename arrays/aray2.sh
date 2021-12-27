#!/bin/bash
size=10;

index=0;
declare -a array;
while [ $index -lt $size ]
do
array[$index]=$(( (RANDOM%100) + 100 )) ;
((index++));
done
echo "${array[@]}"
secondGreatest=$(printf '%s\n' "${array[@]}" | sort -nu | tail -2 | head
-1 )
secondSmallest=$(printf '%s\n' "${array[@]}" | sort -n | head -2 | tail -
1 )
echo "SecondGreatest value is : " $secondGreatest
echo "SecondSmallestest value is : " $secondSmallest