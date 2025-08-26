#!/usr/bin/bash

THEME="$1"

if [ "$THEME" = "dark" ]; then
    TARGET="mocha"
elif [ "$THEME" = "light" ]; then
    TARGET="latte"
else
    echo "First and only argument must be 'light' or 'dark'"
    exit 1
fi

ln -sf ~/.config/rofi/themes/$TARGET.rasi ~/.config/rofi/themes/current.rasi
