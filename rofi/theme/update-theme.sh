#!/usr/bin/bash

THEME="$(darkman get)"
CONFIG_DIR='rofi'
EXTENSION='rasi'

case "$THEME" in
    'light') TARGET='latte' ;;
    'dark')  TARGET='mocha' ;;
esac

CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
CONFIG_PATH="$CONFIG_HOME/$CONFIG_DIR/theme"

ln -sf "$CONFIG_PATH/$TARGET.$EXTENSION" "$CONFIG_PATH/current.$EXTENSION"

