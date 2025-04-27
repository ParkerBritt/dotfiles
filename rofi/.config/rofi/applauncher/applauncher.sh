#!/usr/bin/env bash
dir="$HOME/.config/rofi/applauncher"
theme='style'
export ROFI_BACKGROUND_OPACITY=0.2
rofi -show drun \
    -plugin-path ~/.config/rofi/plugins \
    -modes "calc,drun" \
    -kb-custom-1 'Alt+r' \
    -theme ${dir}/${theme}.rasi \
    -no-history \ # calculator
