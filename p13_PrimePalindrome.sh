#!/bin/bash

#Initializing variables
rem=0

function SolvePalindrome
{
flag=$1
num=$1
num2=$1
while [ $num -gt 0 ]
do
   rem=$(($num%10)) # get Remainder
   num=$(($num/10))  # get next digit
   rev=$(echo ${rev}${rem})
done

if [ "$flag" == "$rev" ];then
  echo "Number is palindrome"
else
  echo "Number is NOT palindrome"
fi

#calling function prime
Prime $num2
}


function Prime
{
num=$1
flag1=1
for ((i=2;i<=$num/2;i++))
do
  if [ $(( $num%$i )) == 0 ];then
     flag1=0
     break
  fi
done

if [ $flag1 -eq 1 ];then
    echo "$num is a prime number"
else
   echo "$num is not a prime number"
fi
}

read -p "Enter number : " num
#Calling function
SolvePalindrome $num
