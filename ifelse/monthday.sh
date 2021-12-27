#!/bin/bash
read -p "Enter month :" Month;
read -p "Enter date :" date;
if (( ($Month <= 6 && $date <= 20) && (($Month >= 3 && $date <= 20) &&
($date<31)) ))
then
echo "true";
else
echo "false";
fi