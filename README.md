# Magic the Gathering Arena - AppImage

Ein einfaches Skript für die Installation von Magic the Gathering Arena mit einem Wine32-AppImage


**Download: [mtga-latest](https://github.com/linux-ott/mtga-appimage/releases/tag/mtga-appimage)**

![GitHub Logo](screenshot.jpg)

## Dependencies

No wine installation required!

### Arch
```
sudo pacman -S wget
```

### Debian/Ubuntu/elementaryOS
```
sudo apt install wget
```

## Install Magic

Zum installieren ```install_magic.sh``` ausführen und dabei die Ordner-Pfade unter Windows nicht ändern
```
./install_magic.sh
```

Hier wird das Installationsverzeichnis angelegt ```$HOME/.local/apps/magic```

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

* **[Hier](https://mtgarena.downloads.wizards.com/Live/Windows32/version)** die neuste Magic Version auslesen und herunterladen
* Die heruntergeladene Datei in den Installationsordner ```$HOME/.local/apps/magic/``` ziehen
* Im Skript ```update.sh``` den Dateinamen ändern und danach ausführen

## Sources
**[Wine32-AppImage](https://github.com/sudo-give-me-coffee/wine32-deploy)**

**[MTGA-Installer](https://mtgarena.downloads.wizards.com/Live/Windows32/versions/3009.800581/MTGAInstaller_0.1.3009.800581.msi)**