
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

## Magic usage commands

| Arguments       |    | What its does                                   |
|-----------------|----|-------------------------------------------------|
| --install       | => | Installed Magic                                 |
| --run           | => | Run Magic                                       |
| --remove        | => | Removed Magic                                   |
| --update        | => | Update Magic                                    |
| --winetricks    | => | Start Winetricks                                |

## Sources
**[Wine32-AppImage](https://github.com/sudo-give-me-coffee/wine32-deploy)**

**[MTGA-Version](https://mtgarena.downloads.wizards.com/Live/Windows32/version)**