#!/bin/bash -x

#USERINPUT
read -p "Enter value for a " number1
read -p "Enter value for b " number2
read -p "Enter value for c " number3

#ARITHMETIC OPERATIONS
operation1=$(($number1+$number2*$number3))
operation2=$(($number1*$number2+$number3))
operation3=$(($number3+$number1/$number2))
echo "Operations are $operation1 $operation2 $operation3"
