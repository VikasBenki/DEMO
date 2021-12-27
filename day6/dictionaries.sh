Q1.>> Write a program in the following steps
a. Roll a die and find the number between 1 to 6
b. Repeat the Die roll and find the result each time
c. Store the result in a dictionary
d. Repeat till any one of the number has reached 10 times
e. Find the number that reached maximum times and the one that was for minimum times
program >>
#!/bin/bash -x
declare -A rollDie
echo "${rollDie[@]}"
result=1;
while [ $(( rollDie[$result] )) -ne 10 ]
do
result=$((RANDOM%6+1))
rollDie[$result]=$((rollDie[$result]+1))
echo "${rollDie[@]}"
done
echo "key" "${!rollDie[@]}"
size=${#rollDie[@]}
echo $size
min=$((rollDie[1]))
max=0
for (( i=1; i<=size; i++ ))
do
if [ $((rollDie[$i])) -gt $max ]
then
max=$((rollDie[$i]))
fi
if [ $((rollDie[$i])) -lt $min ]
then
min=$((rollDie[$i]))
fi
done
echo "Min Value: " $min
echo "Max Value: " $max
###############################################################################


Q2.>> Write a Program to generate a birth month of 50 individuals between the year 92 & 93. Find all the individuals having birthdays in the same month. Store it to finally print
program >>
#!/bin/bash -x
declare -A birthDay
echo "${birthDay[@]}"
flag=1
while [ $flag -le 50 ]
do
rd=$((RANDOM%12+1))
birthDay[$rd]=$((birthDay[$rd]+1))
((flag++))
done
echo "Indivisuals having date of birth in same month: " ${birthDay[@]}