#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

## Editor
EDITOR=/usr/bin/vim
export EDITOR

## Colour in grep
export GREP_OPTIONS=' — color=auto'

## The maximum number of lines in your history file
export HISTFILESIZE=50

## Enables displaying colors in the terminal
export TERM=xterm-color

## Aliases
alias pdf="zathura"
alias icd="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/"

#Kitty SSH Fix
alias ssh='env TERM=xterm-256color ssh' 
