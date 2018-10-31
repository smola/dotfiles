#!/bin/bash

#TODO: xrandr --listmonitors | awk '{ print $4 }'

intern=eDP-1-1
extern=HDMI-1-1

if xrandr | grep "$extern disconnected"; then
	xrandr --auto
else
	xrandr --output $extern --mode 3840x2160 --left-of $intern --auto
fi
