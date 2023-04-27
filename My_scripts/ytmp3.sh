#! /usr/bin/env bash

[[ $# < 1 || $# >2 ]] && exit 1

youtube-dl -qix --yes-playlist --audio-quality 0 --console-title --audio-format mp3 $1
