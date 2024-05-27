#!/bin/bash

sc="$HOME/Pictures"

fname="%Y-%m-%d_%H%M%S.png"
path="$sc/$(date +$fname)"
if [ $1 == "wayland" ]; then
    grim -g "$(slurp)" "$path" && wl-copy < $path
else
    scrot -s --line mode=edge "$path"
    xclip -selection clipboard -t image/png -i "$path"
fi
