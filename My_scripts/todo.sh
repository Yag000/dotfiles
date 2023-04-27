#! /usr/bin/env bash

[[ $# == 2 && $1 == "w" ]] && echo $2 >> /home/yago/My_scripts/todo.txt && exit 0

[[ $# == 1 && $1 == "c" ]] && cat /home/yago/My_scripts/todo.txt && exit 0

[[ $# == 1 ]] && echo $1 >> /home/yago/My_scripts/todo.txt && exit 0

[[ $# == 2 && $1 == "r" ]] && grep -v $2 /home/yago/My_scripts/todo.txt > /home/yago/My_scripts/temp && cat /home/yago/My_scripts/temp > /home/yago/My_scripts/todo.txt  && rm /home/yago/My_scripts/temp && exit 0
