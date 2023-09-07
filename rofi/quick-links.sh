#!/usr/bin/env bash

# Author: Yago Iglesias (@Yag000)
# Based on the work by Aditya Shakya (@adi1090x)

# Current Theme
theme='dotfiles/rofi/quick-links'


# Options
reddit=' Reddit'
youtube=' Youtube'
twitter=' Twitter'
twitch=' Twitch'
github=' Github'
gmail=' Gmail'
outlook=' Outlook'
calendar=' Calendar'
edt=' EDT'
moodle=' Moodle'
chatgpt=' ChatGPT'

# Rofi CMD
rofi_cmd() {
    rofi -dmenu -i\
        -theme "${theme}.rasi"
}



# Pass variables to rofi dmenu
run_rofi() {
    echo -e "$reddit\n$youtube\n$twitter\n$twitch\n$github\n$chatgpt\n$gmail\n$outlook\n$calendar\n$edt\n$moodle" | rofi_cmd
}

open_link() {
    i3-msg workspace number 1 && firefox "$1"
}


# Actions
chosen="$(run_rofi)"
case ${chosen} in
    "$reddit")
        open_link https://www.reddit.com
        ;;
    "$youtube")
        open_link https://www.youtube.com
        ;;
    "$twitter")
        open_link https://www.twitter.com
        ;;
    "$twitch")
        open_link https://www.twitch.tv
        ;;
    "$github")
        open_link https://www.github.com
        ;;
    "$gmail")
        open_link "$(cat "$HOME"/dotfiles/personal/gmail)"
        ;;
    "$outlook")
        open_link https://outlook.office.com/mail/
        ;;
    "$calendar")
        open_link "$(cat "$HOME"/dotfiles/personal/calendar)"
        ;;
    "$edt")
        open_link "$(cat "$HOME"/dotfiles/personal/edt)"
        ;;
    "$moodle")
        open_link "$(cat "$HOME"/dotfiles/personal/moodle)"
        ;;
    "$chatgpt")
        open_link https://chat.openai.com/chat
        ;;
    *)
        exit 0
        ;;
esac
