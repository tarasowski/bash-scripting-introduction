#!/bin/bash

# Every program on a UNIX system can read input from the keyboard the standard input device (stdin) and write to standard output (stdout)

# By default, stdin comes from the keyboard and stdout gets "printed" to the graphical display.
# Another important idea is that instead of typing everything you can run a program that does it for you

# Unix System

# Kernel
# At the core you have the Kernel - The Kernel is a program what manages resources - The Kernel job is to do like scheduling. 
# CPU scheduling (which program is going to run when, it balances the resources)
# I/O to compuer hardware (offers standard interface for all hardware)
# Memory (manages memory allocation)
# --> A program requests resources by making a syscall.

# Shell - is a program that run other programs
# Shell is a computer program that is used to launch another compure programs. It can execute other programs from a text-based interface.
# A text-based interface, you interact with a program completely from the command-line with text commands and text output. 

# Utilities - are small system tools written by other developers  
# Any distribution of UNIX come with dozens of other programs that perform narrow single-purpose tasks. 
# For example there is a command to make new directories and other to move files. 

# Unix Philosophy
# Each program should do one thing well
# The output of a program can become the input of another

# command $arguments 
echo $SHELL

#ls list
ls # list all files in the current directory
ls / # list all files in the root directory
ls ~/Desktop # list all files in the desktop directory

# print working directory
pwd

# manual command - type man <space> command you want to know more about it
#man pwd

# Special Directories on Linux
# There are some special directories
# `..` - the parent directory
# `.` - the current directory
# `~` - your home directory

# cat command
# cat was originally written to concatenate all the files from the its arguments:
# cat beep.txt boop.txt -> will concatenate content from both files
cat beep.txt boop.txt
