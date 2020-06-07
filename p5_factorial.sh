#!/bin/bash
fact=1;

read -p "Enter number:" num

for ((i=1;i<=$num;i++))
do
  fact=$(( $fact*$i ))
done

echo "Factorial of $num!=$fact"
