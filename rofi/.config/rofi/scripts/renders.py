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

# constant arguments
print(f"\0new-selection\x1f0")

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
    import re, subprocess

    print(f"\0data\x1fstage:open_file")
    set_prompt("Render Pass")
    version = sys.argv[1]
    shot_num = expanded_data["shot_num"]
    path = os.path.join(render_dir, shot_num, "3D_render", version)
    pattern = re.compile(r"(^[\S\s]+?)_(\d{4}).exr$")
    unfiltered_files = os.listdir(path)
    # unique_files = {}
    # unique_files = set()

    file_data = {}

    fls_files = subprocess.run("fls", cwd=path, capture_output=True, text=True).stdout
    pattern = re.compile(r"^(?P<name>[\S\s]+?)_\*\*\*\*.exr@(?P<frame_start>\d{4})-?(?P<frame_end>\d{4})?")
    try:
        for file in fls_files.split("\n"):
            match = pattern.match(file)
            if not match:
                continue

            file_name = match.group("name")
            frame_start = match.group("frame_start")
            frame_end = match.group("frame_end")
            
            # file full name
            file_full_name_match = re.search(r"(?P<name>^[\S\s]+?_)\*{4}(?P<ext>.exr)", file)
            file_full_name = file_full_name_match.group("name")+frame_start+file_full_name_match.group("ext")

            file_path = "\0info\x1f"+os.path.join(path,file_full_name)
            digits = frame_start
            if frame_end:
                digits = digits+"-"+frame_end
            icon = "\x1ficon\x1fdjv"
            print(file_name+" "+digits+file_path+icon)

    except Exception as e:
        print(e)
    
elif expanded_data["stage"]=="open_file":
    import subprocess
    file_path = os.getenv("ROFI_INFO")
    # print(file_path)
    subprocess.Popen(["djv", file_path], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
