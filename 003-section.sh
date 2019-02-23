# Scripting Standards

## Script  Naming Convention
# If you want to create a script, always create a directory src/, http/, payroll/ etc.
# Script name should identify the function. It should describe the purpose. my-date.sh
# Script should end with .shell (if multiple shells are used, like zsh, bash, ksh etc.). helloworld.bash or helloworld.ksh or helloworld.zsh
ls -ltr

## Script File Permissions
# You need to have the right permission to execute a script. 
# All scripts to be executed should have proper executable file permissions.
# e.g. rwxr-xr-x
# means the person who created this script can execute it - meaning group who belogs the user has the right to read and execute this script - other people who do not belog to your group they can also execute that script
# r(ead)w(rite)x(executable)r(read)-x(execute)r(ead)-x(execute)
# To change a permissions: (chmod = change mode)

# Anytime you create a script you need to assign the executable permissions. Why do I need to assign? Whenevery you create a file in Linux by default it does not assign executable permission, because it doesn't want you to make a mistake and execute something by mistake and corrupt your file system. 
# chmod a+x script-name
# a stands for all -> everybody should have executable permission on this script (a+x)

#rwxrwxrwx -> this is the basic structure of permissions -> first (rwx) me as a user -> second (rwx) -> the group I belong too -> thrid (rwx) all other users
#rwx-r--r-- -> means I can read, write, execute, the group I belong to can only read, and all other users can also only read.
# chmod a+x script-name would result it. I have all rights, the group have now read and  execution rights, and all other users have also read & execution rights.
#rwx-r-xr-x

## Script Format (from top down)

# Define Shell (#!/bin/bash) -> mandatory, you have to define a shell. You have to know your operating system run that script as bash script.
# Comments (# comments) 
# Define Variables (e.g name=Dimitri)
# Commands (echo, cp, grep, etc)
# Statement (if, while, for etc.)

#!/bin/bash # shell definition -> I want to run this script as bash script
# Simple script to stdout my name # comment
name='Dimitri' # variable
echo $name # command if you want to call a variable you need to put $ before the variable
df -h
date

# date, cp, mv, echo etc. those are already writen shell scripts for us that we can leverage to build up more complex behavior.

# Be sure that the identation is there when you start writing if statement

#  if [ $name -eq 0];
#  then echo $name
#  else
#  echo 'Your name is not Dimitri'
#  fi

## Script Sequence (Procedure -> Sequence -> Sequential Order)
# It goes from top to bottom. If you have command a, b, c in your file. And you want to run command b first, you should put command b first.
# command 1 
# command 2
# command 3
