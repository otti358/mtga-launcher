# Magic the Gathering Arena • Wine32-AppImage

A simple script to install Magic the Gathering Arena with a Wine32-AppImage

No wine installation required

**Download: [mtga-latest](https://github.com/linux-ott/mtga-appimage/releases/tag/mtga-appimage)**

![GitHub Logo](screenshot.jpg)

## Dependencies

### Arch
```
sudo pacman -S wget
```

### Debian/Ubuntu/elementaryOS
```
sudo apt install wget
```

## Install Magic

To install, run ``install_magic.sh`` and do not change the folder-paths on Windows

```
./install_magic.sh
```

Installation directory ```$HOME/.local/apps/magic```

## Run Magic

```
cd $HOME/.local/apps/magic
./Wine-4.21-x86_64.AppImage run magic-bottle
```

## Winetricks

```
cd $HOME/.local/apps/magic
./Wine-4.21-x86_64.AppImage --winetricks magic-bottle
```

## Update

* Download the latest Magic version **[here](https://mtgarena.downloads.wizards.com/Live/Windows32/version)**
* Copy the downloaded file into the installation folder  ```$HOME/.local/apps/magic/```
* Change file name in script ```update.sh``` and execute.

## Sources
**[Wine32-AppImage](https://github.com/sudo-give-me-coffee/wine32-deploy)**

**[MTGA-Installer](https://mtgarena.downloads.wizards.com/Live/Windows32/versions/3009.800581/MTGAInstaller_0.1.3009.800581.msi)**