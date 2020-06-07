#!/bin/bash

#Initializing variable
powerSum=1

read -p "Enter number:" num
for i in `seq $num`
do
     powerSum=$(( 2 **$i )) 
     echo "2^$i=$powerSum"
done
