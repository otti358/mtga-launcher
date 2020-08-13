#!/bin/sh

echo -e "

  ______ _______ _______  _____  _    _ _______      _______ _______  ______ _____ _______
 |_____/ |______ |  |  | |     |  \  /  |______      |  |  | |_____| |  ____   |   |      
 |    \_ |______ |  |  | |_____|   \/   |______      |  |  | |     | |_____| __|__ |_____ 
                                                                                          
"

# Remove Magic
sudo rm -r $HOME/.local/share/icons/magic-bottle.svg $HOME/.local/apps/magic $HOME/.local/share/applications/magic.desktop
notify-send -i "wine" "Magic successfully removed"
