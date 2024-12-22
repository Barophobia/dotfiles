# dotfiles
Configuration files for software I use.

![desktopScreenshot](desktopScreenshot.png)

## Installation
To automatically install all my config files you can just use the install script in the folder of your OS.

```
./install.sh
```

**To install nvim:**
<br>The nvim folder needs to be inside the .config folder, the setup requires packer as a plugin manager.
```
cp -r nvim ~/.config
```

### Using Auto-deploy
The auto-deploy script has only been tested using Fedora (Hence the distro folder) if your distro uses dnf as a package manager then it should still work.
Script must be run using sudo to complete correctly:
```
sudo ~/dotfiles/linux/auto-deploy/Fedora/auto-deploy.sh
```
