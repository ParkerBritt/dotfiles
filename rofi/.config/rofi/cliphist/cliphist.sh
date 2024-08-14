#!/usr/bin/env bash
dir="$HOME/.config/rofi/applauncher"
theme='style'
export ROFI_BACKGROUND_OPACITY=0.5
cliphist list | rofi -dmenu \
    -kb-custom-1 'Alt+r' \
    -theme ${dir}/${theme}.rasi | cliphist decode | wl-copy
