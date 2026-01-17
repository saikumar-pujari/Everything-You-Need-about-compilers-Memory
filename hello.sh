#! /usr/bin/bash
#this is a comment here
# echo 'Skipper'
# echo 'sandy'
# echo 'niki ' #so this is a ccomment here!!
# echo $BASH
# echo $BASH_VERSION
# echo $HOME
# echo $PWD

# name=SKipper
# echo  the name is $name #anything after # is variable!
# val10=10
# 10=10
# 0=10
# echo $val10
# echo $10
# echo $0


# -sp for password adn -p for same line -a for array
# echo 'enter names:'
# read -sp password name1 name2 name3 
# echo the name is: $name1 $name2 $name3 

# echo 'enter names'
# read -a name
# echo ${name[0]} ${name[1]}${name[2]}${name[4]}

# echo 'name:'
# read  
# echo $REPLY       #reply autoreads the and prints direclty


# echo $0 $1 $2 $3 '>echo $1 $2 $3 $4' 

# args=("$@") #using array
# echo ${args[0]} ${args[1]} ${args[2]} ${args[4]}
# echo $@ #prints all the argument inside the array
# echo $# #no of arguments inside the array



# count=10
# if [ $count > 9 ]
# then
#     echo 'condition is true'
# fi

# word=abc
# if [ $word == 'abc' ]
# then
#     echo 'its same'
# fi
# if [ $word == 'abcdd' ]
# then
#     echo 'its same'
# else
#     echo 'condition is false'
# fi


# cd /mnt/c/Users/<your partition name>/Desktop

# echo $(hostname)
# echo $(unname -r)
# echo $(uptime -p)
# echo $(whoami)

# $1 refers to the first argument, $2 to the second, and so on.
# echo “Hello, $1!”
# echo “You are using the $2 theme.”