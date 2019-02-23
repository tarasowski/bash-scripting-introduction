#!/bin/bash
# Author: Dimitri Tarasowski
# Date Created: 02/20/2019
# Description: Lesson summary from the bash course
# Date Modified: 02/20/2019

# Basic Shell Scripts
whoami # shows your username, how you are logged into the machine

echo # will generate empty line
echo Hello World!
echo # will generatel empty line

# rights        user        group   metadata  
#-rw-r--r--  1 tarasowski  staff   279 Feb 23 11:24 000-section.sh
#-rw-r--r--  1 tarasowski  staff   358 Feb 23 11:31 001-section.sh
#-rwxr-xr-x  1 tarasowski  staff  4235 Feb 23 13:18 002-section.sh
#-rwxr-xr-x  1 tarasowski  staff  2857 Feb 23 14:06 003-section.sh
#-rwxr-xr-x  1 tarasowski  staff   109 Feb 23 14:15 004-section.sh
#-rw-r--r--  1 tarasowski  staff    80 Feb 23 11:21 README.md

# if you create file under root -> $sudo -> and you are trying to remove the file as tarasowski, you'll get permission denied. You need to log as a root user to remove 
# you can ommit .sh as file extention if you only run the script inside the bash

# Basic Tasks Script
# It will run sequentially
#!/bin/bash
# Author: Dimitri Tarasowski
# Date created: 02/20/2019
# Desc: This script will run some basic commands
# Date modified: 02/20/2019
echo
echo The script will run some basic commands # this is what we should communicate to the user
echo
pwd
echo
ls
echo
whoami
echo
date
echo
cal
echo
touch a.sh b.sh c.sh
echo End of Script # script is finished -> this is what you can communicate when the script stops

# Basic Administration Tasks
# Check the system help with those commands. Usually you run those commands on the server!
#!/bin/bash
# Author: Dimitri Tarasowski
# Date created: 02/20/2019
# Description: Testing the system health
# Data modified: 02/20/2019
echo
echo This script will run some basic administration tasks # just to start the script in order to stdout to user some information
echo
top | head -10 # top pipe to head -10 to show only the first 10 lines
echo
df -h
echo
uptime
echo
iostat # io statistics
echo End of Script # end of the script to communicate to the user

# Defining variables
#!/bin/bash
# Author: Dimitri Tarasowski
# Date created: 02/20/2019
# Description: We are learning how to define variables
# Date modified: 02/20/2019
echo This script prints the defined variables
p=pwd
l=ls
w=whoami
d=date
#c="cal 2019"
c=cal
echo
echo $p
echo $l
echo $w
echo $d
echo $c
echo
$p
echo
$l
echo
$w
echo
$d
echo
$c

# Input/Output Script
# Create script to take input from the user
# read -> waits for the input
# echo -> output to the screen
#!/bin/bash
# Author: Dimitri Tarasowski
# Date created: 02/20/2019
# Description: Waiting for user input and outputs to the screen
# Data modified: 02/20/2019

a=`hostname` # put the backticks if you want to run the command in echo
echo
echo Hello, my name is $a
echo
echo What is your name?
read name # script will wait for user
echo Hello: $name

# Menu example
#!/bin/bash
# Author: Dimitri Tarasowski
# Date created: 02/20/2019
# Description: Simple dropdown menu
# Date modified: 02/20/2019

PS3='Please enter your choice: '
options=("Option 1" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do 
  case $opt in
    "Option 1")
      echo "you chose option 1"
      ;;
    "Option 2")
      echo "you choose option 2"
      ;;
    "Option 3")
      echo "you chose choice $REPLY which is $opt"
      ;;
    "Quit")
      break
      ;;
    *) echo "invalid option $REPLY";;
  esac
done    


## If-then statement (if this happend do this otherwise do that)
# expression = something that evaluates to a value
#!/bin/bash
# Author: Dimitri Tarasowski
# Date created: 02/20/2019
# Description: Simple if-then statement script
# Date modified: 07/20/2019
echo
count=100
  if [ $count -eq 100 ]
  then
    echo Count is 100
  else
    echo Count is not 100
  fi
echo
  if [ -e ~/Desktop/001_coding/bash-scripting-introduction/004-section.sh ]
  then
    echo "File exists"
  else
    echo "File does not exist"
  fi # tells a script to exit the if statement
echo
echo "What is your name?"
read name
echo
echo Hello, $name
echo
echo "Do you like working in IT? (y/n)"
read Like
echo
  if [ "$Like" == y ]
  then
    echo "Your are cool"
  elif [ "$Like" == n ]
  then
    echo "You should try IT, it's good field" # we use double quotes here because inside there is single quote that should not get evaluated. You cannot use single quotes within single quotes.
    echo
  fi                    


# Case Statement Scripts
#!/bin/bash
echo
echo Please chose one of the options below
echo
echo 'a = Display Date and Time' # we are using single quotes here, because the content inside the single quotes is not going to be evaluated.
echo 'b = List file and directories'
echo 'c = List users logged in'
echo 'd = Check System uptime'
echo

  read choices
  case $choices in
    a) date;;
    b) ls;;
    c) who;;
    d) uptime;;
    *) echo Invalid choice ~ Bye.
  esac
