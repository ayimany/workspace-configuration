if status is-interactive
end

if status is-login
    uwsm start hyprland-uwsm.desktop
end

if test -f ~/.config/current-theme
    set -gx QT_STYLE_OVERRIDE (cat ~/.config/current-theme | string match -q "dark"; and echo "Adwaita-Dark"; or echo "Adwaita")
end

starship init fish | source

