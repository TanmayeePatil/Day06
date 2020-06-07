#!/bin/bash

stake=100
goals=200
trials=100

bets=0
wins=0

for (( i=0;i<$trials;i++ ))
do
     cash=$stake
     while  [ $cash -gt 0 ] & [ $cash -lt $goals ]
     do
           (( bets++ ))
            myRan=$(( ( RANDOM % 2 ) + 1 ))
            if [ $myRan -lt 2 ];then
               #win $1
               (( cash++ ))
            else
               #lose $1
               (( cash-- ))
            fi
     done
     if [ $cash == $goals ];then (( wins++ )); fi
done

echo "$wins wins of $trials"
