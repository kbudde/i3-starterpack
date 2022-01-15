#!/bin/env bash

get(){
  info=$(/usr/bin/xprop WM_CLASS)
  class=$(echo "$info" | awk -F"[ \",]+" '/WM_CLASS/{print $4}')

  # echo "$class" | xclip -selection clipboard # clipboard not accessible?
  notify-send "Found class: '$class' in '$info'"
}

# notify-send "called with $0 $1"
if [[ -z "$1" ]]; then
  # notify-send "terminal"
  gnome-terminal -- "$0" "get"
fi

if [[ "$1" = "get" ]]; then
  # notify-send "get"
  get
fi

 
