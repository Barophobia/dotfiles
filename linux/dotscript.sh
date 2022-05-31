#!/bin/bash

# copy vimrc
cp -fv ~/.vimrc ~/dotfiles/linux

# copy zshrc
cp -fv ~/.zshrc ~/dotfiles/linux

# copy bashrc
cp -fv ~/.bashrc ~/dotfiles/linux

# copy i3 config folder
cp -rfv ~/.config/i3 ~/dotfiles/linux/.config

# copy kitty config folder
cp -rfv ~/.config/kitty ~/dotfiles/linux/.config

# copy polybar config folder
cp -rfv ~/.config/polybar ~/dotfiles/linux/.config

# copy rofi config folder
cp -rfv ~/.config/rofi ~/dotfiles/linux/.config

# copy zathura config folder
cp -rfv ~/.config/zathura ~/dotfiles/linux/.config

# copy dunst config folder
cp -rfv ~/.config/dunst ~/dotfiles/linux/.config

