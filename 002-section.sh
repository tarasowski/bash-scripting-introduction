# What is a Kernel. 
# There is a Kernel in any Linux Distro 
# A Kernel is an interface between Hardware and Software

### Personal Computer

# User - you
# Application - Browser, sendmail, or any application, calendar, office etc.
# Shell - Is anything like a GUI that we have on Windows or Linux. If you don't have GUI then we have terminal that runs Bash, csh. When we exute command they are forwarded to Kernel.
# Kernel - Is a program that is stored inside the OS, program that keeps on running. It takes the commands from Shell. Kernel talks to the Hardware.
# Hardware - CPU, Memory, Hard Disk, I/O

### Operationg System (OS)

# Shell
# Kernel

### Software

# Application
# Shell


## What is a Shell?
# It's like a container -> it holds the information/environment inside of it -> like tupperware
# It's an interface between users and Kernel/OS - If you start a browser on MAC OS and you clicking inside the browser,thats the shell. And the shell talks to the Kernel. And Kernel is telling the Hardware what to do.  In Windows GUI is a shell. Linux sh, bash is a shell.
# If you don't have a GUI, you have a CLI its a shell on Linux etc.

# Run this command to see which shell you have available.
echo $0

## What is a Shell Script?
# Put all your instructions into a container (in a Shell) and RUN it. (ракушка = shell)

# By default shell runs all instruction in a sequence. Right click -> copy file -> go to folder -> right click -> paste -> files gets pasted. That is a function of a SHELL. A shell is instruction to copy. A shell is instruction to paste. Any things you run on windows, they are all created within a SHELL. You don't see those commands! But you can do the same inside the CLI. GUI is a graphical interface that abstracts away the real commands in the shell. 

# Linux is a command line operating system. You don't have to deal with GUI (takes up your memory etc.). You simply run your commands in the CLI. The commands you run e.g. mv, cp, are shell scripts. Those commands were written by the developers of the Operating System. You can use those scripts to leverage it and create your own Shell scripts.  

## Types of Linux Shells
# Gnome - graphical environment that is in Linux. You can install Linux with the GUI.
# KDE - GUI environment. They are the shells. You execute the commands through your keyboard and the mouse. This is how you interact with the OS.
# sh - CLI - no gui, only command line. When a user account is created, the shell gets assigned. You can have bash, sh, zh etc.
# bash - CLI - no gui, Bourne again shell. This is the newer shell, the sh enhanced.
# csh and tcsh - are other shells. Only for C & C++ hardcore guys.
# ksh - David Korn shell, compatible with sh and bash. 

# this commands shows all installed shells on your machine.
cat /etc/shells

## Starting a shell
# If you want to go into another shell. Simply type the name of the shell.
#bash
#ksh
#zsh -> you can type this in order to switch from bash to zsh.
#zsh is extended Bourse shell with a large number of improvements.
#exit if you want to go back to your shell -> bash.

##---> Command Line (Bash, Zsh, Ksh etc.), Gnome (GUI), KDE (GUI), Windows GUI, Mac GUI. Those are all shells that talk to Kernel and Kernel talks to the Hardware.
## simply in command line we write this command to see a files in a directory. Through a GUI we can do it by clicking with the mouse.
ls -l

# If you create a shell script in Korn shell it's not going to run in Bash. You need to know your environment.

## How to run a shell script?
# Absolute it means -> you specify the path to the script
# Absolute Path e.g. ~/tarasowski/scripts/xyz-script
# You are staying in a directory and you need to call a script
# ~/tarasowski/scripts/xyz-script

# Relative means -> from where you are stying if you are in /tarasowski you would do /scripts/xyz-script
# Relative Path e.g. cd /home/tarasowski/scripts/xyz-script
# You walk to the path and then execute the script
# by ./ we are basicall saying that we want to run a script in the same directory.
# ./x<z-script
pwd

echo "Hello World"

# We are spcifying path to run our scripts, because we need to let the OS know where the script is located.
