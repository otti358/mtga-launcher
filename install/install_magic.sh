#!/bin/sh

# Win32-AppImage https://github.com/sudo-give-me-coffee/wine32-deploy
# Latest MTGA Version https://mtgarena.downloads.wizards.com/Live/Windows32/version


## Install

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
remote_version=$(curl --silent "https://mtgarena.downloads.wizards.com/Live/Windows32/version" | jq -r ".CurrentInstallerURL");



echo -e "


 _______ _______  ______ _____ _______      _______ _     _ _______       ______ _______ _______ _     _ _______  ______ _____ __   _  ______     
 |  |  | |_____| |  ____   |   |               |    |_____| |______      |  ____ |_____|    |    |_____| |______ |_____/   |   | \  | |  ____     
 |  |  | |     | |_____| __|__ |_____          |    |     | |______      |_____| |     |    |    |     | |______ |    \_ __|__ |  \_| |_____|     
                                                                                                                                                  


"

# Download Win32-AppImage 
wget -O Wine-4.21-x86_64.AppImage https://github.com/sudo-give-me-coffee/wine32-deploy/releases/download/continuous/Wine-4.21-x86_64.AppImage

# Download MTGA Installer
wget -O mtga_installer.msi "$remote_version"

# Change File Permissions
chmod +x Wine-4.21-x86_64.AppImage
chmod +x mtga_installer.msi

# Create Wine Bottle
./Wine-4.21-x86_64.AppImage create-bottle magic-bottle

# Install File
./Wine-4.21-x86_64.AppImage install magic-bottle mtga_installer.msi

# Set Main Executable 
./Wine-4.21-x86_64.AppImage set-main-executable magic-bottle "C:/Program Files/Wizards of the Coast/MTGA/MTGA.exe"

# Move Icon
cp magic-bottle.svg $HOME/.local/share/icons/

# Move Desktop File
cp magic.desktop $HOME/.local/share/applications/

# Move Files
if [ -d $HOME/.local/apps ] 
then 
	mkdir $HOME/.local/apps/magic
	mkdir $HOME/.local/apps/magic/install

	mv magic-bottle/ $HOME/.local/apps/magic
	mv Wine-4.21-x86_64.AppImage $HOME/.local/apps/magic
	cp install_magic.sh $HOME/.local/apps/magic/install
	cp magic-bottle.svg $HOME/.local/apps/magic/install
	cp magic.desktop $HOME/.local/apps/magic/install
	cd ..
	cp run.sh $HOME/.local/apps/magic
	cp winetricks.sh $HOME/.local/apps/magic
	cp update.sh $HOME/.local/apps/magic
	cp README.md $HOME/.local/apps/magic
	cp remove.sh $HOME/.local/apps/magic
	cd install/
	rm -R mtga_installer.msi
else
    mkdir $HOME/.local/apps/
	mkdir $HOME/.local/apps/magic/
	mkdir $HOME/.local/apps/magic/install

	mv magic-bottle/ $HOME/.local/apps/magic
	mv Wine-4.21-x86_64.AppImage $HOME/.local/apps/magic
	cp install_magic.sh $HOME/.local/apps/magic/install
	cp magic-bottle.svg $HOME/.local/apps/magic/install
	cp magic.desktop $HOME/.local/apps/magic/install
	cd ..
	cp run.sh $HOME/.local/apps/magic
	cp winetricks.sh $HOME/.local/apps/magic
	cp update.sh $HOME/.local/apps/magic
	cp README.md $HOME/.local/apps/magic
	cp remove.sh $HOME/.local/apps/magic
	cd install/
	rm -R mtga_installer.msi
fi

# Notify
notify-send -i "magic-bottle" "Magic successfully installed"
