#!/bin/sh

# Hier die neuste Magic Version auslesen und herunterladen: https://mtgarena.downloads.wizards.com/Live/Windows32/version
# Die heruntergeladene Datei in den Installationsordner "$HOME/.local/apps/magic/" ziehen.
# Im Skript "update.sh" den Dateinamen "MTGAInstaller_0.1.3009.800581.msi" ändern und danach ausführen.


## Update

cd $HOME/.local/apps/magic/
./Wine-4.21-x86_64.AppImage install magic-bottle MTGAInstaller_0.1.3009.800581.msi

notify-send -i "magic-bottle" "Magic Update erfolgreich installiert"
