#!/bin/sh
KEYS_DIR=/sys/class/backlight/intel_backlight

test -d $KEYS_DIR || exit 0
MIN=10
CURRENT_VAL=$(cat $KEYS_DIR/brightness)

if [ "$1" = down ]; then
	if [ $CURRENT_VAL -gt 200 ]; then
		echo $CURRENT_VAL
		xbacklight -20

	fi
else
	xbacklight +20
fi