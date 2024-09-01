#!/bin/bash

# Function to copy file and create directory if necessary
copy_file() {
    local src=$1
    local dest=$2

    # Create the destination directory if it does not exist
    mkdir -p "$(dirname "$dest")"

    # Copy the file
    if cp "$src" "$dest"; then
        echo "Copying $(basename "$src") to $(dirname "$dest")"
        echo "--> done"
	echo
    else
        echo "Failed to copy $(basename "$src")"
    fi
}

# Get the absolute path of the script directory
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
echo "Script directory: $SCRIPT_DIR"

# Define the source directory directly as a sibling of the script directory
SRC_DIR="$SCRIPT_DIR/configs"
echo "Source directory: $SRC_DIR"

# Define the destination directory in the user's home directory
DEST_DIR="$HOME/.config"
echo "Destination directory: $DEST_DIR"

# Copy the configuration files
copy_file "$SRC_DIR/i3/config" "$DEST_DIR/i3/config"
copy_file "$SRC_DIR/terminator/config" "$DEST_DIR/terminator/config"
copy_file "$SRC_DIR/polybar/config.ini" "$DEST_DIR/polybar/config.ini"
copy_file "$SRC_DIR/picom/picom.conf" "$DEST_DIR/picom/picom.conf"
copy_file "$SRC_DIR/rofi/config.rasi" "$DEST_DIR/rofi/config.rasi"
copy_file "$SRC_DIR/xborders/config.json" "$DEST_DIR/xborder/config.json"
#copy_file "$SCRIPT_DIR/wallpaper/wallpaper.png" "$DEST_DIR/wallpapers/wallpaper.png"
