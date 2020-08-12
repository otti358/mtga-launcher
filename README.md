# Magic the Gathering Arena - AppImage

Ein einfaches Skript für die Installation von Magic the Gathering Arena mit einem Wine32-AppImage


**Download: [mtga-latest](https://github.com)**


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

Zum installieren "install_magic.sh" ausführen und dabei die Ordner-Pfade unter Windows nicht ändern.
```
./install_magic.sh
```

Installationsverzeichnis:
```
$HOME/.local/apps/magic
```

## Run Magic

```
./Wine-4.21-x86_64.AppImage run magic-bottle
```

## Winetricks

```
./Wine-4.21-x86_64.AppImage --winetricks magic-bottle
```

## Update

* Hier die neuste Magic Version auslesen und herunterladen: **[Version](https://mtgarena.downloads.wizards.com/Live/Windows32/version)**
* Die heruntergeladene Datei in den Installationsordner ```$HOME/.local/apps/magic/``` ziehen.
* Im Skript ```update.sh``` den Dateinamen ändern und danach ausführen.

## Source
**[Wine32-AppImage](https://github.com/sudo-give-me-coffee/wine32-deploy)**

**[MTGA-Installer](https://mtgarena.downloads.wizards.com/Live/Windows32/versions/3009.800581/MTGAInstaller_0.1.3009.800581.msi)**

