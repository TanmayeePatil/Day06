#!/bin/bash

read -p "Enter Number: " num

orgNum=$num

while [ $num -ge 10 ]
do
 sum=0
 rem=0
 while [ $num -ne 0 ]
  do
     rem=$(( $num%10 ))
     sum=$(( $sum+$rem ))
     num=$(( $num/10 ))
 done
 num=$sum
done

if [ $sum == 1 ];then
      echo "$orgNum is a magic number"
else
      echo "$orgNum is not a magic number"
fi



