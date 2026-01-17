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
# cd /mnt/c/Users/saikumar/Desktop


# echo $(hostname)
# echo $(unname -r)
# echo $(uptime -p)
# echo $(whoami)

# $1 refers to the first argument, $2 to the second, and so on.
# echo “Hello, $1!”
# echo “You are using the $2 theme.”

# echo -e 'file name:\c' #-e to keep the curson on same line
# read file_name

# if [ -e "$file_name" ]    #-e for file there or not and  -f for does file exisits or not! and -d for directory!!
# then
#     echo "$file_name found"
# else
#     echo "$file_name not found"
# fi

# if [ -f file_name ]    
# then
#     echo "$file_name exists"
# else
#     echo "$file_name not exists"
# fi

#-s checks wheter the file is empty ,-r for read ,-x for write nd -w for permission

# if [ -f file_name ]    
# then
#     echo "$file_name empty"
# else
#     echo "$file_name not empty"
# fi

# to add new data in exisiting data use cat >> and to overwrite use cat >
#chmod to change permsiion for a file like read or write using -r or -w to add permisson do +r or +w

# if [ -f "$file_name" ]
# then
#     if [ ! -s "$file_name" ]
#     then
#         echo 'no data here.to quit press cltr+c'
#         cat >> "$file_name"
#     else
#         echo 'there is already some data present'
#     fi
# else
#     echo 'file does not exists'
# fi

# age=25
# if [ "$age" -gt 18 ] && [ "$age" -lt 30 ] #Tip: -a  also can be used instead of &&
# then
#     echo 'using AND operation'
# fi

# age_no=51
# if  [ "$age_no" -gt 58 ] || [ "$age_no" -lt 50 ] #Tip: -l can also be unsed instead for ||
# then
#     echo 'using OR operation'
# else
#     echo 'using OP operation with false(else)'
# fi

# num1=10
# num2=10
# echo $(( num1 + num2 ))
# echo $(( num1 - num2 ))
# echo $(( num1 * num2 ))
# echo $(( num1 / num2 ))
# echo $(( num1 % num2 ))
# echo $(expr $num1 + $num2)

# num1=10.0
# num2=10.0
# # echo $(( num1 + num2 )) #it will give error man!! as its a float not int
# echo "20.0+3" |bc

# -l for math lib(man bc)
