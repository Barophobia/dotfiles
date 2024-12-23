#!/bin/bash

# Ensure script is run as root
if [ $(id -u) -ne 0 ]
  then echo Please run this script as root or using sudo!
  exit
fi

# Update packages to the latest version
dnf update

# Install pipx and ensure PATH is set correctly
dnf install pipx
pipx ensurepath

# Install ansible using pipx
pipx install --include-deps ansible

# Install required dnf module
dnf install python3-libdnf5

# Install ZSH and oh-my-zsh and change shell
dnf install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh $USER

# Run ansible playbook
ansible-playbook /home/$USER/dotfiles/linux/auto-deploy/Fedora/linux-desktop-setup.yaml

# Move wallpaper to Pictures folder
cp /home/$USER/dotfiles/wallpapers/mountains.jpg ~/Pictures/
mv /home/$USER/Pictures/mountains.jpg ~/Pictures/mountains.webp

# Echo recommendation to reboot
echo "Reboot now and login to hyprland"
