#! /usr/bin/env bash

# This script will convert a mp4 file to mp3

# TODO: Also allow different formats

[[ $# != 1 ]] && echo "Usage: $0 <audio-file>" && exit 1

format=""

# Check if the file is a mp4 file
grep ".mp4" $1 > /dev/null && format="mp4"

# Check if the file is a mkv file
grep ".mkv" $1 > /dev/null && format="mkv"

# If the file is not a mp4 or mkv file, exit

[[ $format == "" ]] && echo "Error: $1 is not a mp4 or mkv file" && exit 1


ffmpeg -loglevel panic -i $1 -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000 $(basename -s ".$format" $1).mp3
