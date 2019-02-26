#!/bin/bash
# Pipes another kind of redirect 
# The las but most important kind of redirect is the pipe operator `|`.
# With `|` you can feed the output of one program to the input of the next
# For example, the ls -1 command will list files,
# one per line to stdout. The wc -l command, meanwhie, will count the number of lines
echo
echo There are number of files in the directory
ls -1 | wc -l
echo 
echo There are number of .txt files in the directory
ls *.txt | wc -l
# pipe takes the stdout of one program and copy it to stdin to the second program

#### This idea of pipes means that you can compose programs -> All software is composition!!!
# You make a bigger program on the file that combines multiple commands
# To debug stuff you just leave the pipe out and see that the commands stdout
echo
echo It shows the files that are in the current directory
echo
ls -1
echo
echo Now it should print the number of files in the directory
ls -1 | wc -l

# Curl, Grep, Pipeline
# Curl will take any url. 
# The curl command loads the url and prints the contents to stdout
# Use -s flag because curl by default, prints a progress bar
echo Should load the website
#curl https://piloteers.tech -s

# sed command does the substitution
# The good things about the pipelines in Unix is you can always test what each piece does in isolation
# Test your pipeline in Isolation
echo one two three beep boop | sed $'s/ /\\\n/g'
