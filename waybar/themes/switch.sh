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

ln -sf ~/.config/waybar/themes/$TARGET.css ~/.config/waybar/themes/current.css
systemctl --user restart waybar
