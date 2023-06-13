#!/bin/bash

# This script takes all the files in the current directory and splits them into folders of a given size.

[[ $# == 3 ]] && max=$3

x=$(ls | wc -l)

[[ $# == 2 ]] && max=$(( ( $x / $2 ) + ( $x % $2 > 0 ) ))


[[ $# -lt 2 || $# -gt 3 ]] && exit 1

[[ $(ls | wc -l) == 0 ]] && exit 0

mkdir ../tmp_file_making

for i in $(seq 1 $max)
do
    [[ $(ls | wc -l) == 0 ]] && mv ../tmp_file_making/* . && rm -r ../tmp_file_making && exit 0
    folder=$1_$i
    mkdir ../tmp_file_making/$folder
    for j in $(seq 1 $2)
    do
        [[ $(ls | wc -l) == 0 ]] && mv ../tmp_file_making/* . && rm -r ../tmp_file_making && exit 0
        file=$(ls | head -1)
        mv $file "../tmp_file_making/$folder"
    done
done

mv ../tmp_file_making/* . && rm -r ../tmp_file_making
