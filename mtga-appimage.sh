#!/usr/bin/env bash

# --------------------------------------------------------------
# VARIABLES
# --------------------------------------------------------------

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
script_file="$script_dir/$(basename "${BASH_SOURCE[0]}")"
script_res_dir="$script_dir/res"

magic_dir="$HOME/.local/apps/magic"
magic_dir_mtga="$HOME/.local/apps/magic/mtga-appimage.sh"

remote_version=$(curl --silent "https://mtgarena.downloads.wizards.com/Live/Windows32/version" | jq -r ".CurrentInstallerURL")
wine="$magic_dir/Wine-4.21-x86_64.AppImage"

# --------------------------------------------------------------
# FUNCTIONS
# --------------------------------------------------------------

print_header() {
    echo -e "

 _______ _______  ______ _____ _______      _______ _     _ _______       ______ _______ _______ _     _ _______  ______ _____ __   _  ______     
 |  |  | |_____| |  ____   |   |               |    |_____| |______      |  ____ |_____|    |    |_____| |______ |_____/   |   | \  | |  ____     
 |  |  | |     | |_____| __|__ |_____          |    |     | |______      |_____| |     |    |    |     | |______ |    \_ __|__ |  \_| |_____|     
                                                                                                                                                  

"
}

install() {

    #install_exe_file="$1"

    #if [ ! -f "$install_exe_file" ]; then
        #echo "No Install exe file found: $install_exe_file"
        #exit 1
    #fi

    # Create magic dir
    mkdir -p "$magic_dir"

    # Download Win32-AppImage
    wget -O "$wine" https://github.com/sudo-give-me-coffee/wine32-deploy/releases/download/continuous/Wine-4.21-x86_64.AppImage
    chmod +x "$wine"

    # Download MTGA Installer
    mtga_installer="$magic_dir/mtga_installer.msi"
    wget -O "$mtga_installer" "$remote_version"
    chmod +x "$mtga_installer"

    # Create Wine Bottle
    "$wine" create-bottle magic-bottle

    # Install File
    "$wine" install magic-bottle "$mtga_installer"

    # Set Main Executable
    "$wine" set-main-executable magic-bottle "C:/Program Files/Wizards of the Coast/MTGA/MTGA.exe"

    # Copy Files
    cp "$script_res_dir/magic-bottle.svg" "$HOME/.local/share/icons/"
    cp -r "$script_dir/magic-bottle" "$magic_dir"
    cp -r "$script_dir/mtga-appimage.sh" "$magic_dir"

    # Create Desktop File
    {
        echo "[Desktop Entry]"
        echo "Name=Magic"
        echo "Icon=magic-bottle"
        echo "Exec=\"$magic_dir_mtga\" --run"
        echo "Type=Application"
    } >>"$HOME/.local/share/applications/magic.desktop"
    
    # Notify
    notify-send -i "magic-bottle" "Magic successfully installed"

    ########################################################
    # TODO  !!! Hier kommt weiterer Installier Kram rein !!!
    ########################################################
}

remove() {
    rm -r "$magic_dir"
    rm "$HOME/.local/share/applications/magic.desktop"
    rm "$HOME/.local/share/icons/magic-bottle.svg"
    notify-send -i "wine" "Magic successfully removed"
}

update() {
    wget -O mtga_update.msi "$remote_version"
    cd "$magic_dir"
    "$wine" install magic-bottle mtga_update.msi
    notify-send -i "magic-bottle" "Magic successfully updated"
}

winetricks() {
    cd "$magic_dir"
    "$wine" --winetricks magic-bottle
}

run() {
    cd "$magic_dir"
    "$wine" run magic-bottle
}

# --------------------------------------------------------------
# MAIN
# --------------------------------------------------------------

print_header

if [ "$1" = "--install" ]; then
    install "$2"
    exit 0
fi

if [ "$1" = "--remove" ]; then
    remove
    exit 0
fi

if [ "$1" = "--update" ]; then
    update
    exit 0
fi

if [ "$1" = "--winetricks" ]; then
    winetricks
    exit 0
fi

if [ "$1" = "--run" ]; then
    run
    exit 0
fi

if [ "$1" = "" ]; then
    echo -e "
    HELP:
    \t./mtga-appimage.sh --install
    \t./mtga-appimage.sh --run
    \t./mtga-appimage.sh --remove
    \t./mtga-appimage.sh --update
    \t./mtga-appimage.sh --winetricks
    "
    exit 0
fi