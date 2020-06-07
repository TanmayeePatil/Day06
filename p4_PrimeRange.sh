#!/bin/bash

read -p "Enter start number:" start
read -p "Enter end number:" end

echo "Prime numbers between $start and $end are:"

for ((i=$start;i<=$end;i++)) 
do
        flag=1
	for ((j=2;j<=$i/2;++j))
	do
	if [ $(( $i%$j )) == 0 ];then
		  flag=0
		  break
	fi
	done

    if [ $flag -eq 1 ];then echo "$i"; fi
done
