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

# head prints the first part of a file
head -n5 message.txt
tail -n5 message.txt # tail is the opposite of head

echo git logs
git log | head -n1

echo '$()'
echo 'The $() (dollar sign and parentheses) is POSIX command substitution syntax. It does execute the command inside $() and paste back the result of that command. '
DT=$(date)
echo $DT

# substack uses it all the time
echo calendar
cal -3
# backticks will execute the command
echo `date`.txt
echo $(date).txt
# the carrot means starting form the beginning of the line -> this is what carrot means -> searching for the string
curl -s https://github.com/substack.keys | grep ^ssh-ed25519

# backticks
# There are two ways of doing backticks.
# Backticks run a command, and whatever was written to standard output. It's copy-pased into what every your command was 
# There are two ways of using backticks
echo `date`
echo $(date)
echo some log data > "$(date "+%Y-%m-%d")-end.log"
echo append some log data >> "$(date "+%Y-%m-%d")-end.log"

# arithmetic
echo $((4*5+1))
echo Greeting from the year $((`date "+%Y"` + 1000))

# xargs
# Reads from stdin and copies everything as arguments to the program
# It puts the to the end of the command whatevery you specify
date "+%Y" | xargs echo Greeting from the year

# environment variables
#####
# Environment variables are defined by the shell and shell scripts
#####
# Are ways you can save little pieces of information that you get as the output of your commands
# Or if you want to define a constants
# It's also a way to configure the system behavior but also the shell itself
# To list the current environment variables, type `export`
export
# Some of the variables are defined by shell, other ones you can define
echo
# If you wan to see what the variable binds to, print this:
echo $USER

# The bash if it sees $ it looks at the value that comes after $, looks for a variable and substitues it with the variable value
# This command checks what the env variable $HOME holds and substitues it with the value that is assigned to.
ls $HOME

# declartion of our own variables
# To set a variable, it's a convention to use ALL CAPS
MSG=hi
echo $MSG
MSG=hello
echo $MSG
YEAR=$(date "+%Y")
echo $YEAR

# The variables defined above exist as long as the terminal window is open
# If you open a sub-shell or another commands it's not going to be defined
# If you want to use those variables in another program that you want to spawn, you need to export it

# exporting variables

# If you want to be able to use this environment variables in another program that you are going to spawn
# You need to export it 
export YEAR
# If the environment variable is defined you can type `export variableName`
# node
# process.env.YEAR
# 2019
# process.exit()

export YEAR=`date` # you can also declare the content of the variable inline

# If you want to declare variables that you want to use, just add them to ~/.bashrc / ~/.bash_profile

# single quotes
# If you want to use characters like `<` or `>` in the arguments to a program,
# you will need to use quotes so that the shell doesn't try to interpret them.
echo '<b>wow</b>'

# double quotes
# Double quotes are similar but environment variables and backticks will be interpolated in-place (replaced with their value)
echo "There's no place like $HOME"
echo
echo "So long $(date "+%Y")...."
echo
echo "So long $(date "+%Y")... next stop $(($(date "+%Y") + 1))"'!'
echo
echo "<b>hello $(whoami)</b>"

# If you want spaces in the value of arguments 
#git commit -am 'Hello World' 
# we do quote Hello World because it's the argument the git commit waiting for. If we have whitespaces it will put the first word `Hello` as the argument

#########
# permissions
# user (u) - group (g)  - other (o)

# if for a directory x (executable) is set it means you can list the content of the directory

# chmod ugo-x logs -> removes the permission to list the content for everyone

# chmod ugo+x logs -> adds permissions to everyone to list the content. 

# x for files means you can run it chmod +x file.sh

# chmod ugo+wrx pipes.sh -> gives everyone all rights

# chmod ugo-wrx pipes.sh -> removes for everyone the rights
# chmod a+wrx pipes.sh -> gives everyone all rights

groups # shows all the groups the users belogs too

# octal permissions chmod 644 -> 4 for write, 2 for read, 1 for execute -> (u)(g)(o) -> rw-w--w--

########
# exit codes
echo $? # check the last exit code
# the final operator is the semicolon
# semicolon is just like with new lines it always going to execute the next command
# && || ;

# subshells
# if you put parentesis around something it treats it as a subprogram
(if test -f cool.txt; then echo true; else echo false; fi); echo $?
ls /sdfsdfsdfsdf > /dev/null # this is how you through the data away


########
# job control
# bash is built to handle multiple programs running in parallel.
# Ctrl-C is an example of a signal. That gets sent to the program, when you want the program to exit
# Ctrl-C terminate the process in the foreground
# Ctrl-Z put the process in the background
# Whenever you run a command you run it in the foreground.
# kill sends a signal to the program to terminate

# vim doesn't gets killed by kill %n, because some programs don't accept it.
# use instead kill -9 %n to kill the program, so the OS system is going to deal with it.
# fg is a signal too
man kill
kill %% # will stop the last job that was backgrounded


###########
# screen
screen -list
# screens are good for running little servers!!!
# you can use screen to run command-line programs and keep them running, even when you go
# screen -> puts you into the new screen. You can type Ctrl-D or Ctrl-C to drop out from the screen
# screen -S name -> this is how you can give a name for a screen
# Ctrl-A `d`  -> will detach you from the screen
# screen -x name -> to attach back to the screen
# type exit -> if you want to exit from the screen -> or Ctrl-D
