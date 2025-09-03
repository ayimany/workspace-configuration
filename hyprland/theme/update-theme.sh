#!/usr/bin/bash

THEME="$(darkman get)"
CONFIG_DIR='hypr'
EXTENSION='conf'

case "$THEME" in
    'light')
	    TARGET='latte'
	    CURSOR='Latte Light'
	    ;;
    'dark')
	    TARGET='mocha'
	    CURSOR='Mocha Dark'
	    ;;
esac

CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
CONFIG_PATH="$CONFIG_HOME/$CONFIG_DIR/theme"

ln -sf "$CONFIG_PATH/$TARGET.$EXTENSION" "$CONFIG_PATH/current.$EXTENSION"
hyprctl -q reload
hyprctl -q setcursor "Catppuccin $CURSOR" 24

