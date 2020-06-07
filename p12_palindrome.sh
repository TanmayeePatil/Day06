#!/bin/bash

#Initializing variables
rem=0

function SolvePalindrome
{
flag=$1
num=$1
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

}

read -p "Enter number : " num
#Calling function
SolvePalindrome $num
