#!/bin/bash

# copy vimrc
cp -fv ~/.vimrc ~/dotfiles/

# copy zshrc
cp -fv ~/.zshrc ~/dotfiles

# copy bashrc
cp -fv ~/.bashrc ~/dotfiles

# copy i3 config folder
cp -rfv ~/.config/i3 ~/dotfiles/.config

# copy kitty config folder
cp -rfv ~/.config/kitty ~/dotfiles/.config

# copy polybar config folder
cp -rfv ~/.config/polybar ~/dotfiles/.config

# copy rofi config folder
cp -rfv ~/.config/rofi ~/dotfiles/.config

