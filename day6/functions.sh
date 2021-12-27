Q1>> Help user find degF or degC based on their Conversion Selection. Use
Case Statement and ensure that the inputs are within the Freezing Point (
0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
a. degF = (degC * 9/5) + 32
b. degC = (degF – 32) * 5/9

#!/bin/bash -x
function degree() {
degc=$1
degf=$2
echo "Fahrenheit to Celsius"
degf=$(( (degc-32)*5/9 ))
echo "Faherenhiet =" $degf
echo "Celsius to Fahrenheit"
degc=$(( (degf*9/5)+32 ))
echo "Celsius =" $degc
}
read -p "Degree in Celsius= " degc
read -p "Degree in Fahreheit= " degf
degree $degc $degf

############################################

Q2>> Write a function to check if the two numbers are Palindromes
Ans>> program
#!/bin/bash -x
function palindrome() {
n=$1
num=$n
num1=$num
rev=0
while [ $num1 -ne 0 ]
do
temp=$(($num1%10))
rev=$(($rev*10+$temp))
num1=$(($num1/10))
done
if [ $rev -eq $n ]
then
echo "$n, Is a Palindrome Number"
else
echo "$n, Is not a Palindrome Number"
fi
}
read -p "Enter the Number :" a
palindrome $a

############################

Q3>> Take a number from user and check if the number is a Prime then show
that its palindrome is also prime
a. Write function check if number is Prime
b. Write function to get the Palindrome.
c. Check if the Palindrome number is also prime
Ans>> program
#!/bin/bash -x
function isPrime() {
n=$1
check=0
if [ $n -gt 1 ]
then
prime=yes
for(( i=2; i<$n; i++ ))
do
if [ $(($n%$i)) -eq 0 ]
then
prime=no
break
fi
done
if [ $prime = yes ]
then
echo "$n, Is a prime number"
check=1
else
echo "$n, Is not a prime number"
fi
else
echo "Invalid Input! Enter number greater than 1"
fi
}
function isPalindrome() {
n=$1
rev=0
num=$n
while [ $num -gt 0 ]
do
rem=$(($num%10))
rev=$(($rev*10+$rem))
num=$(($num/10))
done
if [ $n -eq $rev ]
then
echo "$n, Is a palindrome number"
else
echo "$n is not a palindrome number"
fi
}
read -p "Enter the number:" a
isPrime $a
if [ $check = 1 ]
then
isPalindrome $n
fi
###########################################
