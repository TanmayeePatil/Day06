#!/bin/bash
sum=0
one=1
read -p "Enter number:" num

for ((i=1;i<=$num;i++))
do
   sum=`echo $sum $one $i | awk -F" " '{if(x=$1+$2/$3) print x}'`
done

for ((i=1;i<=$num;i++))
do
   if [ $i -eq 1 ];then
        printf "\n1+"
   elif [ $i -eq $num ];then
        printf "(1/$i)"
   else
        printf "(1/$i)+"
   fi
done

sum=`echo $sum | awk '{if(y=1+$1) print y}'`
printf "\nSum of series: $sum"
