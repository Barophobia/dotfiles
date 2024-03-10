
echo "Install brew cask"
brew tap homebrew/cask

# Install Terminal
echo "Installing Terminal (Alacritty)"
brew install --cask alacritty

# Install password management
echo "Installing Keepass"
brew install --cask keepassxc

# Install Development Apps
echo "Installing Development Apps"
brew install docker
brew install git
brew install --cask visual-studio-code
brew install --cask microsoft-remote-desktop

# Install Comms Apps
echo "Installing Comms Apps"
brew install --cask discord
brew install --cask signal

# Install web
echo "Installing firefox"
brew install --cask firefox

# Install music app
echo "Installing Spotify"
brew install --cask spotify

# Install Game apps
echo "Install game apps"
brew install --cask steam

# Install media app
brew install --cask mpv

# Install Zathura
echo "Installing Zathura and Zathura PDF Poppler"
brew tap zegervdv/zathura
brew install zathura
brew install zathura-pdf-poppler

echo "Configuring Zathura PDF Poppler"
mkdir -p $(brew --prefix zathura)/lib/zathura
ln -s $(brew --prefix zathura-pdf-poppler)/libpdf-poppler.dylib $(brew --prefix zathura)/lib/zathura/libpdf-poppler.dylib
echo "Zathura PDF Poppler Configuration Complete"

echo "The apps have been installed"
