#! /bin/bash

num1=20
num2=30

#addition
# echo $(( num1 + num2 ))
# #subtraction
# echo $(( num1 - num2 ))
# #multiplication
# echo $(( num1 * num2 ))
# #division
# echo $(( num1 / num2 ))
# #mod
# echo $(( num1 % num2 ))

# expr command
# echo $(expr $num1 + $num2 )
# echo $(expr $num1 \* $num2 )    # caution

#for decimals we need to use bc
# pipe symbol | is used to give output of left cmd to right cmd
# echo "20.5+0.5" | bc
# echo "scale=2;20.5/5" | bc  #scale => no of decimals
# echo "$num1+$num2" | bc

echo "scale=2;sqrt($num1)" | bc -l  # -l to include math library
