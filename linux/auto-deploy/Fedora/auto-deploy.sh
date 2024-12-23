#!/bin/bash

# Ensure script is run as root
if [ $(id -u) -ne 0 ]
  then echo Please run this script as root or using sudo!
  exit
fi

# Update packages to the latest version
dnf update

software_required=(
	"git-credential-oauth"
	"pipx"
	"python3-libdnf5"
	"zsh"	
        "vim"
        "hyprland"
        "hyprpaper"
        "mpv"
        "ranger"
        "btop"
        "rofi" 
 

for i in ${software_required[@]}
do
	dnf install $i
done

# Configure Git oauth
git credential-oauth configure
git config --global --unset-all credential.helper
git config --global --add credential.helper "cache --timeout 21600" # six hours
git config --global --add credential.helper oauth

# Ensure pipx PATH is set correctly
pipx ensurepath

# Install ansible using pipx
pipx install --include-deps ansible

# Install oh-my-zsh and change shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh $USER

# Run ansible playbook
ansible-playbook /home/$USER/dotfiles/linux/auto-deploy/Fedora/linux-desktop-setup.yaml

# Move wallpaper to Pictures folder
cp /home/$USER/dotfiles/wallpapers/mountains.jpg ~/Pictures/
mv /home/$USER/Pictures/mountains.jpg ~/Pictures/mountains.webp

# Echo recommendation to reboot
echo "Reboot now and login to hyprland"
