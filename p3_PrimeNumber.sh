#!/bin/bash

#Initializing variable
flag=1

read -p "Enter number:" num

for ((i=2;i<=$num/2;i++))
do
  if [ $(( $num%$i )) == 0 ];then
     flag=0
     break
  fi
done

if [ $flag -eq 1 ];then
    echo "$num is a prime number"
else
   echo "$num is not a prime number"
fi
