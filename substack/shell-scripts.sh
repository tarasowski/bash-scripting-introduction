#!/bin/bash
# Quotes

echo "<b>hello $USER</b>"
echo "<b>hello $(whoami)</b>" # whoami is a command therefore you can put it inside $(), with USER it doesn't work
echo "<b>hello `whoami`</b>"
#git commit -am 'Hello World' # you put 'Hello World' into single quotes because of git commit -am expects an argument. 
#Hello World w/ '' would have spaces, first argument, second argument

# Introduction Scripts
# Whenever you find yourself typing the same sequence of commands several times, consider making a script!
# Just put the commands you would normally type into a file and add `#!/bin/bash`to the top of file
#!/bin/bash
#mkdir log
cd log

# You don't need to specifiy the .sh /suffix for the file. Just use the scriptname
echo `date "+%F.%T"` $@ >> `date "+%F"`.log
# we can use $@ it means e.g Hello world will be written not a single argument Hello, World, But it will take everything what I'm putting as argument and concat it into one argument

# Whenever your script gets called it passes the env variables. They start with $1 and increase $1, $2, $3, $4
# To run a file you need to specify either the relative or absulute path

# $1 $2 $3 positional arguments
# $* $@ all arguments

#read LINE
# hello world
# makes LINE='hello world'

echo -n 'What is your name?'
read NAME
echo "Hello $NAME"

# Basic utility don't propmt for arguments > see Linux philosophy
#while true; do date; sleep 1; done
for x in {0..10}; do echo $x; done
ls -1 | while read LINE; do echo -n "$LINE";  wc -l $LINE | awk '{print $1}'; done
