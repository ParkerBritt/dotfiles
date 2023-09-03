#!/bin/bash

# Default values
DIRECTORY="$HOME/Pictures/.wallpapers/painterly/"
THRESHOLD=4000000
MODEL_NAME="realesrgan-x4plus"

# Argument parsing using getopts
while getopts ":d:t:n:" opt; do
  case $opt in
    d)
      DIRECTORY="$OPTARG"
      ;;
    t)
      THRESHOLD="$OPTARG"
      ;;
    n)
      MODEL_NAME="$OPTARG"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

# Check if the ImageMagick tool 'identify' is available
if ! command -v identify &> /dev/null; then
    echo "Error: ImageMagick is not installed. Please install it and try again."
    exit 1
fi

# Check if realesrgan-ncnn-vulkan tool is available
if ! command -v realesrgan-ncnn-vulkan &> /dev/null; then
    echo "Error: realesrgan-ncnn-vulkan is not installed. Please install it and try again."
    exit 1
fi

# Create the output directory named after the model if it doesn't exist
OUTPUT_DIRECTORY="${DIRECTORY%/}_$MODEL_NAME/"
mkdir -p "$OUTPUT_DIRECTORY"

# Process each file in the directory
find "$DIRECTORY" -type f | while read -r file; do
    # Check if file is an image by trying to fetch its dimensions
    if dimensions=$(identify -format "%wx%h" "$file" 2>/dev/null); then
        width=${dimensions%x*}
        height=${dimensions#*x}
        
        pixel_count=$((width * height))
        
        filename=$(basename -- "$file")
        output="${OUTPUT_DIRECTORY}${filename}"

        if (( pixel_count < THRESHOLD )); then
            echo "Upscaling $file with pixel count of $pixel_count"

            # Upscale factor is always set to 4 if below threshold
            upscale_factor=4

            # Print the realesrgan-ncnn-vulkan command being executed
            echo "Running: realesrgan-ncnn-vulkan -n $MODEL_NAME -s $upscale_factor -i \"$file\" -o \"$output\""
            
            # Run realesrgan-ncnn-vulkan with the upscale factor and model name
            realesrgan-ncnn-vulkan -n $MODEL_NAME -s $upscale_factor -i "$file" -o "$output"
        else
            # If the file doesn't need upscaling, simply copy it to the output directory
            cp "$file" "$output" -v
        fi
    fi
done
