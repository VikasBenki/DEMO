#!/bin/bash -x
arr=(1 -2 1 3 -2 -5)
n=${#arr[@]};
for (( i=0;i<$n-3;i++ ))
do
for (( j=i+1;j<$n-2;j++ ))
do
for (( k=j+1;k<$n-1;k++))
do
if (( arr[i] + arr[j] + arr[k] == 0 ))
then
echo "sum of integers : " ${arr[i]} ${arr[j]} ${arr[k]} " is
triplet";
else
continue
fi
done
done
done