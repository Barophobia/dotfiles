#!/bin/bash

# copy vimrc
cp -f ~/.vimrc ~/dotfiles/

# copy zshrc
cp -f ~/.zshrc ~/dotfiles

# copy bashrc
cp -f ~/.bashrc ~/dotfiles

# copy i3 config folder
cp -rf ~/.config/i3 ~/dotfiles/.config

# copy kitty config folder
cp -rf ~/.config/kitty ~/dotfiles/.config


