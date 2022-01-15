#!/bin/env sh

pactl list sinks|grep -o "bluez_sink.*_sink$"
