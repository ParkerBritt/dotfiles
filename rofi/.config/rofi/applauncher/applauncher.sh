#!/usr/bin/env bash
dir="$HOME/.config/rofi/applauncher"
theme='style'
export ROFI_BACKGROUND_OPACITY=0.5
rofi -show drun \
    -modes "renders,ssh" \
    -kb-custom-1 'Alt+r' \
    -theme ${dir}/${theme}.rasi
