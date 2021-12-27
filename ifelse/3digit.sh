#!/bin/bash -x
read -p "Enter size of array : " size;
index=0;
for (( index;index<$size;index++ ))
do
array[index]=$(( (RANDOM%6) + 100 ));
done
echo "random values are : " ${array[*]};
max=${array[0]};
min=${array[0]};
for ((index=1;index<$size;index++))
do
if (( array[index] > $max ))
then
max=${array[index]};

fi
if (( array[index] < $min ))
then
min=${array[index]};
fi
done
echo "max is : " $max
echo "min is : " $min