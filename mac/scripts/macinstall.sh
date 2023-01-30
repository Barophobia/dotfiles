# Script to move the files from the github repo to the correct config location

#Move ZSHRC
cp -rfv ~/dotfiles/mac/.zshrc $HOME/

#Move VIMRC
cp -rfv ~/dotfiles/mac/.vimrc $HOME/

#Move BASHRC
cp -rfv ~/dotfiles/mac/.bashrc $HOME/

#Move Config folder
cp -rfv ~dotfiles/mac/.config $HOME/

