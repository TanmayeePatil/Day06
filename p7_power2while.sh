#!/bin/bash

powerSum=1

while [ $powerSum -ne 256 ]
do
 read -p "Enter number:" num
 for i in `seq $num`
 do
   powerSum=$(( 2 **$i ))
   echo "2^$i=$powerSum"
 done
done
