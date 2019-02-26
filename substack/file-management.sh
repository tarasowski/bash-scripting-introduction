# cat command
# cat was originally written to concatenate all the files from the its arguments:
# cat beep.txt boop.txt -> will concatenate content from both files
cat beep.txt boop.txt

# Stdout is simply the graphical display -> content is written to the display. Before display there was a printer.
# Stdin is a keyboard or another program -> you type something on the keyboard -> this is the input.

# If you want just to display content of the file you can use cat command for that
cat beep.txt

# If you are trying to cat a zip or png file the terminal could get stuck. Simply type
#reset -> it's going to reset your terminal

# Copy a file to another directory cp source-file target-file
cp beep.txt message.txt
cat message.txt
# cp beep.txt ../ -> copies a file to the parent directory
# the copy command looks at the last argument. And if the last thing is a directory its gonna copy all the preceding files into that directory
cp beep.txt boop.txt ./cool


# Flags in Unix
# A flag is a special argument that start with a `-` (dash), or sometimes they start with `--` (sometimes it's also called a switch)
# cp -r source-folder target-folder (it copies everything inside the folder recursively)
#cp -R ./ cool/


# Renaming files
# mv target source
# mv cool good -> changes the name of the directory

# Make directories
#mkdir a/b/c/d # it's not going to work, will exit with NO such file or directory
mkdir -p a/b/c/d # it's going to create the directories for you. If you need to create nested directories

# Wildcards and brace expansion
cat *.txt #it's gonna cat all .txt  files inside this current directory
# If you want to see what the expansion would do, put echo in front whatever you want to do
echo mv moby-dick.txt{_,} # all things that you list separated by commas inside the braces {_,} are going to be expanded -> this command renames from ..._ to ...
cat b{ee,oo}p.txt # In order to see to what it expends to use echo command
echo b{ee,oo}p.txt
echo b*p.txt # you can also use a star for it, if you want anything that begins with b and ends with p.
echo {a,b}{c,d}{x,y,z} # those things don't have to exist, you can simply generate things with the expansion

# If you look brace expansion it generates patterns and start will look for files
echo *.txt # will expand and to all files that end with .txt
 
# ECHO commands
# You can test stuff with echo command
# It's a command that prints out a string
# It's a way provinding stuff for stdout or just printing different commands 
echo mkdir img{1..10}
mkdir -p images/img{1..10}
rm -rf images

# Delete Files & Directories
#rm command
# Be very careful with that
# If you want to delete a directory -> rmdir -> will fail if the directory is empty
# rm -r directory -> to delete the directory
# Be careful with rm there is no undo for that.

# Read from stdin and print to stdout
wc -l beep.txt # count the number of lines
wc -c beep.txt # count the number of bytes
wc -w beep.txt # count the number of words
#wc # will sit there and will wait for you to type things on the keyboard
# type <CTRL>D to end the command

# Documentation and options
#man wc
# the order of the flags or arguments doesn't matter
head beep.txt
head -c 1 beep.txt # shows the first n bytes

# Path
# `.`or `..` are relative paths - it's relative to the current directory
# `/` `~` are absoulte path

# Writing and reading files
echo
echo 'echo prints by default to the stdout'
echo You are able to see it and read it from the terminal
echo This command is saving something to the file > hello.txt
cat hello.txt
# This stuff is called output riderect, means what we get as stdout we can redirect it to save to the file
# This works for any kind of commands, we can use the output of ls command
ls > listing.txt
cat listing.txt
# You will see the differece between stdout and what is saved in the file, because if we run ls in the terminal it does e.g. adds colors etc. -> interactive

# Append to a file
ls >> listing.txt
echo append this message to a file >> hello.txt
cat hello.txt
(echo at the beginning; cat hello.txt) > hello.txt_ && mv hello.txt{_,}
cat hello.txt

# Input redirect
wc -c < hello.txt #it's like you would type it by yourself on the keyboard. It redirects the content from a file back to the command.

# Redirects
# < input redirect
# > output redirect
# >> append redirect

# Summary
# The whole point is to stdout something to the display and redirect / pipe is somewhere else
# echo is the command that stdout a string, there are other commands such as ls, cat etc. that can be redirected or piped to something else
# it's much more harder to put something at the beginning of the file, than at the end (this is how OS works). 
