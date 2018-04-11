#!/bin/bash

intern=eDP1
extern=HDMI1

if xrandr | grep "$extern disconnected"; then
	xrandr --auto
else
	xrandr --output HDMI1 --mode 3840x2160 --left-of eDP1 --auto
fi
