
![GitHub Logo](data/magic_logo.jpg)

<p align="center"><i>"Magic The Gathering is a collectible and digital collectible card game created by Richard Garfield. Released in 1993 by Wizards of the Coast.</i>"
</p>


**Download: [mtga-appimage](https://github.com/linux-ott/mtga-appimage/releases/tag/mtga-appimage)**

No wine installation required

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
git clone https://github.com/linux-ott/mtga-appimage.git
cd mtga-appimage/install
./install_magic.sh
```

Installation directory ```$HOME/.local/apps/magic```

## Parameters

| Parameters      |
|-----------------|
| --install       |
| --run           |
| --remove        |
| --update        |
| --winetricks    |


## Run Magic

```
cd $HOME/.local/apps/magic
./run.sh
```

## Update Magic

```
cd $HOME/.local/apps/magic
./update.sh
```

## Winetricks

```
cd $HOME/.local/apps/magic
./winetricks.sh
```

## Sources
**[Wine32-AppImage](https://github.com/sudo-give-me-coffee/wine32-deploy)**

**[MTGA-Version](https://mtgarena.downloads.wizards.com/Live/Windows32/version)**