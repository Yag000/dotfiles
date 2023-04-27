#! /usr/bin/env bash

[[ $# != 1 ]] && echo "We only need one argument" &&  exit 1

cp /home/yago/My_scripts/templates/jflex_template.jflex $1.jflex