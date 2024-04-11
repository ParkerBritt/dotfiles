#!/usr/bin/env bash

ls_data() {
    ls "$1" | xargs -I % echo -e "%\0info\x1f$2"
}
render_path="$HOME/Perforce/y3-film/render/"
if [ -z "$*" ]; then
    ls_data "$render_path" "shot_ver"
elif [[ "$ROFI_INFO" == "shot_ver" ]]; then
    ls_data "${render_path}${1}/3D_render/" "bar"
    # echo -e "foo\0info\x1fbar"
elif [[ "$ROFI_INFO" == "bar" ]]; then
    ls_data "${render_path}${1}/3D_render/" "bar"
    echo "bar"
fi
# else
#    ls "${render_path}${1}/3D_render/" 
# fi

# if [ x"$@" = x"quit" ]
# then
#     exit 0
# fi
# echo "reload"
# echo "quit"
# echo -en "\0theme\x1flistview {require-input: false;}\naap\0icon\x1ffolder\x1finfo\x1ftest\n"
