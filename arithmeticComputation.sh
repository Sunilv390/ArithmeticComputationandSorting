#!/bin/bash -x

#USERINPUT
read -p "Enter value for a " number1
read -p "Enter value for b " number2
read -p "Enter value for c " number3

#ARITHMETIC OPERATIONS
operation1=$(($number1+$number2*$number3))
echo "First operation is $operation1 "
