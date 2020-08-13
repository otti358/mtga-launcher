#!/bin/sh

# Update
remote_version=$(curl --silent "https://mtgarena.downloads.wizards.com/Live/Windows32/version" | jq -r ".CurrentInstallerURL");

echo -e "


 _______ _______  ______ _______      _     _  _____  ______  _______ _______ _______
 |  |  |    |    |  ____ |_____|      |     | |_____] |     \ |_____|    |    |______
 |  |  |    |    |_____| |     |      |_____| |       |_____/ |     |    |    |______
                                                                                     


"

wget -O mtga_update.msi "$remote_version"

cd $HOME/.local/apps/magic/
./Wine-4.21-x86_64.AppImage install magic-bottle mtga_update.msi

notify-send -i "magic-bottle" "Magic Update successfully installed"