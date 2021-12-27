#!/bin/bash -x
read -p "Enter length : " L;
reg='^[0-9]$';
if [[ $L =~ $reg ]]
then
FtToInch=`echo $L | awk '{FtToInch=$1*12} {print FtToInch}'`
InchtoFt=`echo $L | awk '{InchToFeet=$1/12} {print InchToFeet}'`
FtToMeter=`echo $L | awk '{FtToMeter=$1*0.3048} {print FtToMeter}'`
MeterToFeet=`echo $L | awk '{MeterToFeet=$1*3.281} {print
MeterToFeet}'`
case $L in
$L)
echo $L "feet = " $FtToInch "inch"
echo $L "inch = " $InchtoFt "feet"
echo $L "feet = " $FtToMeter "meter"
echo $L "meter = " $MeterToFeet "feet" ;;
esac
else
echo "wrongformat"
fi