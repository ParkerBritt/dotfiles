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

def set_prompt(prompt):
    print(f"\0prompt\x1f{prompt}")

expanded_data = expand_data()
if(not rofi_data):
    set_prompt("Renders Shot")
    print("\0data\x1fstage:shot_ver")
    dirs = [element+"\0icon\x1ffolder" for element in os.listdir(render_dir)]
    print("\n".join(dirs))
elif expanded_data["stage"]=="shot_ver":
    set_prompt("Render Version")
    shot_num = sys.argv[1]
    print(f"\0data\x1fstage:passes,shot_num:{shot_num}")
    path = os.path.join(render_dir, shot_num,"3D_render")
    dirs = [element+"\0icon\x1ffolder" for element in os.listdir(path)]
    print("\n".join(dirs))
elif expanded_data["stage"]=="passes":
    import re

    set_prompt("Render Pass")
    version = sys.argv[1]
    shot_num = expanded_data["shot_num"]
    path = os.path.join(render_dir, shot_num, "3D_render", version)
    pattern = re.compile(r"(^[\S\s]+?)_(\d{4}).exr$")
    unfiltered_files = os.listdir(path)
    # unique_files = {}
    unique_files = set()

    list_items = []

    for file in unfiltered_files:
        match = pattern.match(file)
        if match and not match.group(1) in unique_files:
            # unique_files[match.group(1)] = match.group(2)
            file_name = match.group(1)
            file_digit = match.group(2)
            file_path = "\0info\x1f"+os.path.join(path,match.group(0))
            icon = "\x1ficon\x1fdjv"
            list_items.append(file_name+file_path+icon)
            unique_files.add(file_name)
    print("\0data\x1fstage:open_file")
    print("\n".join(list_items))
elif expanded_data["stage"]=="open_file":
    import subprocess
    file_path = os.getenv("ROFI_INFO")
    subprocess.Popen(["djv", file_path], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
