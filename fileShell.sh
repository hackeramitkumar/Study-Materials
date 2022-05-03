#! /bin/bash

#checking whether a file exists
# echo -e "Enter the name of the file: \c"    # -e is used to enable the \c( which is used to make echo behave as print instead of println)
# read file_name
 # here -e is used to check if file exists
# -f is for regular file 
# -d is for directories
# -b block special files (images, videos ,binaries etc..)
# -c for character special files (text)
# -s for empty files
# -r to check for read permission, similarly -w and -x
# if [ -e $file_name ] 
# then 
#     echo $file_name found
# else
#     echo $file_name not found
# fi

# to append to a file having write permission
# echo -e "Enter the name of the file: \c"
# read filename
# if [ -f $filename ]
# then 
#     if [ -w $filename ]
#     then    
#         echo "type some text, ctrl+d to quit.."
#         cat >> $filename    # double angles ( >> ) are used for appending, single for overriding
#         echo "appended successfully"
#     else 
#         echo "no write permission"
#     fi
# else
#     echo "$filename does not exist"
# fi

#to read a file named test
# while read p
# do
#     echo $p
# done < test

# cat test | while read p
# do 
#     echo $p
# done


################# until loops (runs until condition is false)
# i=1
# until [ $i -gt 10 ]
# do
#     echo $i
#     (( i++ ))
# done


################# for loops  ################
# for var in 1 2 3 4 5    # or {1..5..1} {start..end..increment}
# do
#     echo $var
# done

# for (( i=0; i<5; i++ ))
# do 
#     echo $i
# done

# for command in ls pwd date
# do
#     echo "-------------$command-------------"
#     $command
# done

################### select loops ################
# select name in mark john ashish kullu       ## case is another topic, not necessary to use here :lol
# do
#     case $name in 
#     mark)
#         echo mark ummm
#         ;;
#     john)
#         echo john yaayay
#         ;;
#     *)
#         echo who selected
#     esac
# done

###############break###########
# for (( i=0; i<10; i++ ))
# do
#     if [ $i -gt 5 ]
#     then
#         echo breaking
#         break
#     fi
#     echo $i
# done

############# continue ########3
# for (( i=0; i<10; i++ ))
# do
#     if [ $i -eq 6 ]
#     then
#         continue
#     fi
#     echo $i
# done

