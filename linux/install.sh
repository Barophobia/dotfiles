# Script to move the files from the github repo to the correct config location

#Move ZSHRC
cp -rfv $HOME/dotfiles/linux/.zshrc $HOME/

#Move VIMRC
cp -rfv $HOME/dotfiles/linux/.vimrc $HOME/

#Move BASHRC
cp -rfv $HOME/dotfiles/linux/.bashrc $HOME/

#Move Config folder
cp -rfv $HOME/dotfiles/linux/.config $HOME/

