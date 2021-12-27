#!/bin/bash -x
oneft=12inch;
numinches=42;
ft=$(( $numinches/12));

#######################
area=$(( 60 * 40 ));
inmeters=`expr $area | awk '{meter=$1/3.281} {print meter}'`

##################
meters=$((60*40*25))
acres=`expr $meters | awk '{acre=$1/4046.86} {print acre}'`
echo "acres :" $acres;