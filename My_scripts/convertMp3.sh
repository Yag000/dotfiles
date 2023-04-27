#! /usr/bin/env bash

[[ $# != 1 || $(grep ".mp4" $1 ) == "" ]] && exit 1

ffmpeg -loglevel panic -i $1 -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000 $(basename -s .mp4 $1).mp3


