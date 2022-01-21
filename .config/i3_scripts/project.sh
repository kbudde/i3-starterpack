#!/usr/bin/env bash

project=$(find ~/projects/ -mindepth 1 -maxdepth 1 -type d  | rofi -dmenu -p "Choose project")

# open always even if nothing was selected
code "$project"
