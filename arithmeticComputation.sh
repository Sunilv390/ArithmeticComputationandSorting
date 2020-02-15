#!/bin/bash -x

#USERINPUT
read -p "Enter value for a " number1
read -p "Enter value for b " number2
read -p "Enter value for c " number3

#ARITHMETIC OPERATIONS
operation1=$(($number1+$number2*$number3))
operation2=$(($number1*$number2+$number3))
operation3=`echo "scale=2; $number3+$number1/$number2" | bc`
operation4=`echo "scale=2; $number1%$number2+$number3" | bc`
echo "Operations are $operation1 $operation2 $operation3 $operation4 "

#STORING OPERATIONS IN DICTIONARY
declare -A arithmetic
arithmetic[operation1]=$operation1
arithmetic[operation2]=$operation2
arithmetic[operation3]=$operation3
arithmetic[operation4]=$operation4

