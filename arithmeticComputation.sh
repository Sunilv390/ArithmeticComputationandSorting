#!/bin/bash -x

#USERINPUT
read -p "Enter value for a " number1
read -p "Enter value for b " number2
read -p "Enter value for c " number3

#ARITHMETIC OPERATIONS
operation1=`echo "scale=2; $number1+$number2*$number3" | bc`
operation2=`echo "scale=2; $number1*$number2+$number3" | bc`
operation3=`echo "scale=2; $number3+$number1/$number2" | bc`
operation4=`echo "scale=2; $number1%$number2+$number3" | bc`

#STORING OPERATIONS IN DICTIONARY
declare -A arithmetic
arithmetic[operation1]=$operation1
arithmetic[operation2]=$operation2
arithmetic[operation3]=$operation3
arithmetic[operation4]=$operation4

#STORING THE OPERATIONS
length=${#arithmetic[@]}
for (( index=0; index<$length; index++ ))
do
   array[index]=${arithmetic[operation$((index+1))]}
done

#SORT THE RESULT IN DECENDING ORDER
for (( index=0; index<$length; index++ ))
do
   for (( index1=0; index1<$length-1; index1++ ))
   do
      if (($(echo "${array[index1]} < ${array[index1+1]}" | bc -l)))
      then
         temporary=${array[index1]}
         array[index1]=${array[index1+1]}
         array[index1+1]=$temporary
      fi
   done
done

#SORT THE RESULT IN ASCENDING ORDER
for (( index=0; index<$length; index++ ))
do
   for (( index1=0; index1<$length-1; index1++ ))
   do
      if (($(echo "${array[index1]} > ${array[index1+1]}" | bc -l)))
      then
         temporary=${array[index1]}
         array[index1]=${array[index1+1]}
         array[index1+1]=$temporary
      fi
   done
done
