#! /usr/bin/env bash

[[ $# != 1 ]] && echo "We only need one argument" &&  exit 1
[[ $(file $1 | grep image) == "" ]] && echo "The file provided is not an image" && exit 3

[[ -a $1 && $(dirname $1) == . ]] && convert -thumbnail 100 "$(pwd)//$1" /home/yago/Pictures/Miniatures/mini_"$1" || convert -thumbnail 100 "$1" /home/yago/Pictures/Miniatures/mini_"$(basename $1)"

