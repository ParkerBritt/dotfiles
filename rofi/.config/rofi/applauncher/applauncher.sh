#!/bin/bash
dir="$HOME/.config/rofi/applauncher"
theme='style'
export ROFI_BACKGROUND_OPACITY=0.5
rofi -show drun \
    -modes "renders,ssh" \
    -theme ${dir}/${theme}.rasi