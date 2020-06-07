#!/bin/bash

countHeads=0
countTails=0

while [ $countHeads -ne 11 ] && [ $countTails -ne 11 ]
do

 myRan=$(( ( RANDOM % 2 ) + 1 ))

 if [ $myRan -eq 1 ];then
   echo "HEADS"
   countHeads=$(( $countHeads+1 ))
 else
   echo "TAILS"
   countTails=$(( $countTails+1 ))
 fi
done

if [ $countHeads -eq 11 ];then
  echo "***WINNER HEADS***"
elif [ $countTails -eq 11 ];then
  echo "***WINNER TAILS***"
fi
