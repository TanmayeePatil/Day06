#!/bin/bash

function CelsiusToFahrenheit
{
  tempCel=$1
  result=`echo "$tempCel" | awk '{if(a=($1*1.8)+32) print a}'`
  echo "Celsius temperature into Fahrenheit= $result"
}

function FahrenheitToCelsius
{
  tempFah=$1
  result2=`echo "$tempFah" | awk '{if(b=($1-32)*0.56) print b}'`
  echo "Fahrenheit temperatures into Celsius= $result2"
}

echo "MENU"
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo "Select your choice (1-2) : "
read choice
case ${choice} in
  1)
	read -p "Enter temperature Celsius: " tempCel
        CelsiusToFahrenheit $tempCel
      ;;
  2)	read -p "Enter temperature Fahrenheit: " tempFah
        FahrenheitToCelsius $tempFah
       ;;
   *)
	echo "Please select 1 or 2 only ... Try again"
       ;;
esac
