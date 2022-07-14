#!/usr/bin/env bash

project=$(find ~/projects/ -mindepth 1 -maxdepth 1 -type d  | rofi -dmenu -p "Choose project")

[ -n "$project" ] && code "$project"
