#! /bin/bash
#the first line above tells which interpreter to use to run the file

# beware of spaces.. 🤞
# echo Hello World
# echo "Hello World"

# System variables=>
# echo my shell is $BASH
# echo my shell version is $BASH_VERSION
# echo my home directory is $HOME
# echo my present working directory is $PWD

# USER defined variables
# name=Ashish
# reg_no=20204041
# echo my name is $name
# echo my reg_no is $reg_no

# get input from the keyboard
# echo Enter name:
# read name
# echo Entered name is $name

#get input on the same line
# read -p "username: " username
# echo "username: " $username

#get input like password
# read -sp "password: " password
# echo "password is " $password

# get multiple inputs in array
# echo "Enter names: "
# read -a names
# echo "first Name: ${names[0]}"

# to output an array
names=('ashish' 'priyanshu' 'kuldeep')
echo ${names[@]}
#length of the array
echo ${#names[@]}
# indices of the array 
echo ${!names[@]}
#add/update an element to the array
names[3]='neetendra'
echo ${names[@]}
#remove an element from the array
unset names[2]
echo ${names[@]}


#if the read value is not assigned to any lvalue then it goes to REPLY variable
# echo Enter something
# read
# echo "entered thing: " $REPLY

#parsing arguments (stored in 1,2,3,.. variables) 0 contains the file name itself
# echo $0
# echo $1 $2 $3

#parsing arguments another way (here 0th index will not be the filename)
# args=("$@")     # $@ contains the arguments, we can assign it to an array
# echo ${args[0]} ${args[1]}

#to print the no of arguments
# echo $#

#if statement
# read -p "enter your age " age
# if [ $age -ge 18 ]
# then
#     echo "you are adult"
# fi

#we need to use parenthesis instead of square brackets in case of comparison operators like <, > , <=, >=
# read -p "enter your age: " age
# if (( $age >= 18 ))
# then 
#     echo "you are 18+"
# elif (( $age >= 14 ))
# then
#     echo "you are 14+"
# else
#     echo "you are a kid"
# fi

