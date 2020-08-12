#!/bin/sh

# Download the latest MTGA version here
# Copy the MTGAINSTALLER.EXE into the installation directory $HOME/.local/apps/magic/
# Rename folder-paths in script nano update.sh and execute ./update.sh

## Update

cd $HOME/.local/apps/magic/
./Wine-4.21-x86_64.AppImage install magic-bottle MTGAInstaller_0.1.3009.800581.msi

notify-send -i "magic-bottle" "Magic Update successfully installed"
