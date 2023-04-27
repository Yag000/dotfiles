#! /usr/bin/env bash

for f in *\ *; do mv "$f" "${f// /_}"; done

acc=0
for i in $(ls)
	do 
	f=$(basename -- "$i")
	extension="${f##*.}"
	[[ $i != 'name.sh' ]] && mv $i $1_$acc"".$extension && acc=$(( acc + 1 ))
done

