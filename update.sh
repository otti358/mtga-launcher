#!/bin/sh

# Download the latest Magic version **[here](https://mtgarena.downloads.wizards.com/Live/Windows32/version)**
# Copy the downloaded file into the installation folder  ```$HOME/.local/apps/magic/```
# Change file name in script ```update.sh``` and execute.


## Update

cd $HOME/.local/apps/magic/
./Wine-4.21-x86_64.AppImage install magic-bottle MTGAInstaller_0.1.3009.800581.msi

notify-send -i "magic-bottle" "Magic Update successfully installed"
