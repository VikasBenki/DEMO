#!/bin/bash -x
read -p "Enter First number" a;
read -p "Enter Second number" b
read -p "Enter Third number" c;
A1=$(( a+b*c ));
A2=$(( a%b+c ));
A3=$(( c+a/b ));
A4=$(( a*b+c ));
if (( ($A1>$A2) && ($A1>$A3) && ($A1>$A4) ))
then
echo "Maximum value is : " $A1;
elif (( ($A2>$A1) && ($A2>$A3) && ($A2>$A4) ))
then
echo "Maximum value is : " $A2;
elif (( ($A3>$A1) && ($A3>$A2) && ($A3>$A4) ))
then
echo "Maximum value is : " $A3;
else
echo "Maximum value is : " $A4;
fi
if (( ($A1<$A2) && ($A1<$A3) && ($A1<$A4) ))
then
echo "Minimum value is : " $A1;
elif (( ($A2<$A1) && ($A2<$A3) && ($A2<$A4) ))
then
echo "Minimum value is : " $A2;
elif (( ($A3<$A1) && ($A3<$A2) && ($A3<$A4) ))
then
echo "Minimum value is : " $A3;
else
echo "Minimum value is : " $A4;
fi