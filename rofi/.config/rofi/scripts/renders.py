#!/bin/python3
import sys, os
rofi_data = os.getenv("ROFI_DATA")
render_dir = "/home/parker/Perforce/y3-film/render/"
def expand_data():
    if not rofi_data:
        return
    pairs: list = rofi_data.split(",")
    expanded_dict = {}
    for pair in pairs:
        key, value = pair.split(":")
        expanded_dict[key] = value
    return expanded_dict

expanded_data = expand_data()
if(not rofi_data):
    print("\0data\x1fstage:shot_ver")
    print("\n".join(os.listdir(render_dir)))
elif expanded_data["stage"]=="shot_ver":
    shot_num = sys.argv[1]
    print(f"\0data\x1fstage:passes,shot_num:{shot_num}")
    path = os.path.join(render_dir, shot_num,"3D_render")
    print("\n".join(os.listdir(path)))
elif expanded_data["stage"]=="passes":
    version = sys.argv[1]
    shot_num = expanded_data["shot_num"]
    path = os.path.join(render_dir, shot_num, "3D_render", version)
    print("\n".join(os.listdir(path)))

