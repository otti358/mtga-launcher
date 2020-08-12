#!/bin/sh

# Remove Magic
sudo rm -r $HOME/.local/share/icons/magic-bottle.svg $HOME/.local/apps/magic $HOME/.local/share/applications/magic.desktop
notify-send -i "wine" "Magic erfolgreich entfernt"