#!/usr/bin/bash

# ========================================
# BASH SCRIPTING GUIDE - GEN Z EDITION 🚀
# ========================================

# 1. COMMENTS & BASIC OUTPUT
# ---------------------------
# Anything after # is a comment - bash ignores it
echo '=== 1. COMMENTS & BASIC OUTPUT ==='
echo 'Skipper'  # This comment won't be executed
echo 'sandy'
echo 'niki'


# 2. BUILT-IN VARIABLES
# ---------------------
echo ''
echo '=== 2. BUILT-IN VARIABLES ==='
echo "Bash path: $BASH"
echo "Bash version: $BASH_VERSION"
echo "Home directory: $HOME"
echo "Current directory: $PWD"


# 3. CUSTOM VARIABLES
# -------------------
echo ''
echo '=== 3. CUSTOM VARIABLES ==='
name="Skipper"
echo "The name is: $name"

val10=10
echo "Value: $val10"

# WRONG WAYS (commented out because they cause errors):
# 10=10        # ❌ Can't start with number
# 0=10         # ❌ Can't start with number
# echo $10     # ❌ This refers to command line argument #10, not variable

echo "Script name: $0"  # $0 is the script name


# 4. READING USER INPUT
# ----------------------
echo ''
echo '=== 4. READING USER INPUT ==='

# Basic read (uncomment to test):
# echo 'Enter your name:'
# read username
# echo "Hey $username!"

# Multiple inputs (uncomment to test):
# echo 'Enter 3 names:'
# read name1 name2 name3
# echo "Names are: $name1, $name2, $name3"

# Silent password input with -sp flag (uncomment to test):
# echo 'Enter password:'
# read -sp password
# echo ''
# echo "Password saved!"

# Array input with -a flag (uncomment to test):
# echo 'Enter multiple names:'
# read -a names
# echo "First: ${names[0]}, Second: ${names[1]}, Third: ${names[2]}"

# Auto-read with REPLY (uncomment to test):
# echo 'Say something:'
# read
# echo "You said: $REPLY"


# 5. COMMAND LINE ARGUMENTS
# --------------------------
echo ''
echo '=== 5. COMMAND LINE ARGUMENTS ==='
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "Third argument: $3"
echo "All arguments: $@"
echo "Number of arguments: $#"

# Using arrays for arguments
args=("$@")
echo "Using array - First arg: ${args[0]}, Second arg: ${args[1]}"


# 6. IF STATEMENTS - NUMBER COMPARISONS
# --------------------------------------
echo ''
echo '=== 6. IF STATEMENTS - NUMBERS ==='

count=10
if [ $count -gt 9 ]  # -gt means "greater than"
then
    echo 'Count is greater than 9'
fi

# Comparison operators:
# -gt : greater than
# -lt : less than
# -eq : equal to
# -ne : not equal to
# -ge : greater than or equal to
# -le : less than or equal to


# 7. IF STATEMENTS - STRING COMPARISONS
# --------------------------------------
echo ''
echo '=== 7. IF STATEMENTS - STRINGS ==='

word="abc"
if [ $word == "abc" ]
then
    echo 'Word matches abc'
fi

if [ $word == "abcdd" ]
then
    echo 'This wont print'
else
    echo 'Word does not match abcdd'
fi


# 8. SYSTEM COMMANDS
# ------------------
echo ''
echo '=== 8. SYSTEM COMMANDS ==='
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "Current user: $(whoami)"


# 9. FILE OPERATIONS
# ------------------
echo ''
echo '=== 9. FILE OPERATIONS ==='

# Example file check (uncomment to test):
# echo -e 'Enter filename:\c'  # -e enables \c to keep cursor on same line
# read file_name

# if [ -e "$file_name" ]  # -e checks if file exists
# then
#     echo "$file_name found"
# else
#     echo "$file_name not found"
# fi

# File test operators:
# -e : exists (file or directory)
# -f : exists and is a regular file
# -d : exists and is a directory
# -s : exists and is not empty
# -r : readable
# -w : writable
# -x : executable


# 10. FILE CONTENT CHECK
# ----------------------
echo ''
echo '=== 10. FILE CONTENT CHECK ==='

# Example (uncomment to test):
# if [ -f "$file_name" ]
# then
#     if [ ! -s "$file_name" ]  # ! means NOT
#     then
#         echo 'File is empty. Adding data (Ctrl+C to quit):'
#         cat >> "$file_name"  # >> appends to file
#     else
#         echo 'File already has data'
#     fi
# else
#     echo 'File does not exist'
# fi

# File operations:
# cat > file.txt   # Overwrite file
# cat >> file.txt  # Append to file
# chmod +r file    # Add read permission
# chmod +w file    # Add write permission
# chmod +x file    # Add execute permission


# 11. LOGICAL OPERATORS
# ----------------------
echo ''
echo '=== 11. LOGICAL OPERATORS ==='

age=25
if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]  # && means AND
then
    echo 'Age is between 18 and 30'
fi

# Alternative AND syntax:
if [ "$age" -gt 18 -a "$age" -lt 30 ]  # -a also means AND
then
    echo 'Still between 18 and 30'
fi

age_no=51
if [ "$age_no" -gt 58 ] || [ "$age_no" -lt 50 ]  # || means OR
then
    echo 'Age is either above 58 or below 50'
else
    echo 'Age is between 50 and 58'
fi


# 12. ARITHMETIC OPERATIONS
# --------------------------
echo ''
echo '=== 12. ARITHMETIC OPERATIONS ==='

num1=10
num2=5

echo "Addition: $(( num1 + num2 ))"
echo "Subtraction: $(( num1 - num2 ))"
echo "Multiplication: $(( num1 * num2 ))"
echo "Division: $(( num1 / num2 ))"
echo "Modulus: $(( num1 % num2 ))"

# Alternative using expr:
echo "Using expr - Addition: $(expr $num1 + $num2)"

# Float calculations require bc (uncomment if bc is installed):
# echo "Float calc: "
# echo "20.5 + 3.2" | bc
# echo "scale=2; 10/3" | bc -l  # -l loads math library


# 13. CASE STATEMENTS
# -------------------
echo ''
echo '=== 13. CASE STATEMENTS ==='

vehicle=$1
case $vehicle in
    "car" )
        echo "Rent of $vehicle is 100rs" ;;
    "bike" )
        echo "Rent of $vehicle is 50rs" ;;
    "sai" )
        echo "Vehicle is owned by $vehicle" ;;
    * )  # * is like default case
        echo "Unknown vehicle" ;;
esac


# 14. ARRAYS
# ----------
echo ''
echo '=== 14. ARRAYS ==='

os=('ubuntu' 'windows' 'linux')
echo "All OS: ${os[@]}"
echo "Second OS: ${os[1]}"
echo "Array length: ${#os[@]}"

# Modify array
os[1]='win10'
echo "After modification: ${os[@]}"

# Remove element
unset os[1]
echo "After deletion: ${os[@]}"

# String as array
string="abcdefgh"
echo "String: ${string[@]}"
echo "Second char: ${string[1]}"


# 15. WHILE LOOPS
# ---------------
echo ''
echo '=== 15. WHILE LOOPS ==='

n=1
while [ $n -le 5 ]  # Run while n <= 5
do
    echo "Count: $n"
    n=$(( n + 1 ))
    # sleep 1  # Uncomment to add 1 second delay
done

# Alternative syntax:
# n=1
# while (( $n <= 5 ))
# do
#     echo "$n"
#     (( n++ ))
# done


# 16. READING FILE LINE BY LINE
# ------------------------------
echo ''
echo '=== 16. READING FILE LINE BY LINE ==='

# Create a temp file for demo
echo -e "Line 1\nLine 2\nLine 3" > temp_file.txt

# Read file line by line
while read line
do
    echo "Read: $line"
done < temp_file.txt

# Alternative using cat and pipe:
cat temp_file.txt | while read line
do
    echo "Piped: $line"
done

rm temp_file.txt  # Clean up


# 17. UNTIL LOOPS
# ---------------
echo ''
echo '=== 17. UNTIL LOOPS ==='

n=1
until [ $n -gt 5 ]  # Run until n > 5
do
    echo "Until count: $n"
    n=$(( n + 1 ))
done


# 18. FOR LOOPS - BASIC
# ---------------------
echo ''
echo '=== 18. FOR LOOPS - BASIC ==='

for num in 1 2 3 4 5
do
    echo "Number: $num"
done

# Range syntax:
for i in {1..5}
do
    echo "Range: $i"
done

# Range with step:
for i in {0..10..2}  # 0 to 10, step by 2
do
    echo "Step: $i"
done


# 19. FOR LOOPS - COMMANDS
# ------------------------
echo ''
echo '=== 19. FOR LOOPS - COMMANDS ==='

for command in ls pwd date
do
    echo "--------------- Running: $command ---------------"
    $command
done


# 20. FOR LOOPS - FILES/DIRECTORIES
# ----------------------------------
echo ''
echo '=== 20. FOR LOOPS - FILES/DIRECTORIES ==='

echo "Directories in current location:"
for item in *
do
    if [ -d "$item" ]
    then
        echo "📁 $item"
    fi
done

echo ''
echo "Files in current location:"
for item in *
do
    if [ -f "$item" ]
    then
        echo "📄 $item"
    fi
done


# ========================================
# END OF GUIDE
# ========================================
echo 'Now go build something cool! 💪'
