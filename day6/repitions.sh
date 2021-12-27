Q1>>Write a program that takes a command-line argument n and prints a
table of the powers of 2 that are less than or equal to 2^n till 256 is
reached..
Ans>> program
#!/bin/bash -x
read -p "Enter the number:" n
pow=1;
for(( i=1; i<=$n; i++ ))
do
pow=$(($pow*2))
while [ $pow -le 257 ]
do
echo $pow
break
done
done

########################################
Q2>>Write a Program where a gambler starts with Rs 100 and places Re 1 bet
until he/she goes broke i.e. no more money to gamble or reaches the
goal of Rs 200. Keeps track of number of times won and number of bets
made.
Ans>> program
#!/bin/bash -x
baseValue=100
betCount=0
winCount=0
while [ $baseValue -lt 200 ] && [ $baseValue -gt 0 ]
do
bet=$((RANDOM%2))
if [ $bet -eq 1 ]
then
let baseValue++
let winCount++
else
let baseValue--
fi
let betCount++
done
if [ $baseValue -eq 200 ]
then
echo "Gambler wins and reached limit of $baseValue rs"
echo "Total bets made $betCount"
else
echo "Gambler losses and reached limit of $baseValue rs"
echo "Total bets made $betCount"
fi

##########################################
Q3>>Extend the Flip Coin problem till either Heads or Tails wins 11 times.
Ans>> program
#!/bin/bash -x
hcount=0
tcount=0
while [ $hcount -lt 11 ] && [ $tcount -lt 11 ]
do
flip=$((RANDOM%2))
if [ $flip -eq 1 ]
then
let hcount++
else
let tcount++
fi
done
if [ $hcount -eq 11 ]
then
echo "head wins and score is $hcount"
else
echo "tail wins and score is $tcount"
fi