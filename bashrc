#!/bin/bash
DOTWRYN="$HOME/.wryn"
RC_DIR="$DOTWRYN/bash"

# source .wryn/bash files
for file in $(find $RC_DIR -maxdepth 1 -type f); do source $file; done;

# osx
if [[ "$OSTYPE" == "darwin"* ]]; then
	for file in $(find $RC_DIR/osx -type f); do source $file; done;
fi

# linux
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	for file in $(find $RC_DIR/linux -type f); do source $file; done;
fi

# --- ViM as default editor -----------------------------------
export EDITOR='vim'
export VISUAL='vim'

# --- Welcome message -----------------------------------------
exec figlet "Welcome, beautiful" | lolcat; echo; cowsay -p "damn u sexy" | lolcat; 

alias restart='clear; source ~/.bashrc; echo'

# --- !@#$ Aliases --------------------------------------------
alias clera='clear';
alias sl='sl -alF | lolcat';


# --- BASH RC DEPENDENCIES ------------------------------------
# sl
# lolcat
# figlet
# fortune
# vim
# cowsay
