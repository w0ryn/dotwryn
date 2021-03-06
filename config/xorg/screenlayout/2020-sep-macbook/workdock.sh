#!/bin/sh
if xrandr | grep -q "DP-0 connected"; then
	xrandr \
		--output DP-0 --primary --mode 1920x1080 --pos 0x586 --rotate normal --scale 1.5x1.5\
		--output DP-1 --off \
		--output HDMI-0 --off \
		--output DP-2 --mode 2880x1800 --pos 4500x586 --rotate normal --scale 0.8x0.8\
		--output DP-3 --off \
		--output DP-4 --mode 1920x1080 --pos 2880x0 --rotate right --scale 1.5x1.5\
		;
else
	xrandr \
		--output DP-0 --off \
		--output DP-1 --primary --mode 1920x1080 --pos 0x586 --rotate normal --scale 1.5x1.5\
		--output HDMI-0 --off \
		--output DP-2 --mode 2880x1800 --pos 4500x586 --rotate normal --scale 0.8x0.8\
		--output DP-3 --mode 1920x1080 --pos 2880x0 --rotate right --scale 1.5x1.5\
		--output DP-4 --off \
		;
fi


ROLL=$(($RANDOM%5));

if   [ $ROLL -eq 0 ]; then
	feh --bg-fill\
		$HOME/Pictures/bg/midoriya.jpg\
		$HOME/Pictures/bg/altaria.jpg\
		$HOME/Pictures/bg/captainfalcon.jpg\
		>/dev/null 2>&1;
elif [ $ROLL -eq 1 ]; then
	feh --bg-fill\
		$HOME/Pictures/bg/dimitri.jpg\
		$HOME/Pictures/bg/claude.jpg\
		$HOME/Pictures/bg/edelgard.jpg\
		>/dev/null 2>&1;
elif [ $ROLL -eq 2 ]; then
	feh --bg-fill\
		$HOME/Pictures/bg/fe8.jpg\
		$HOME/Pictures/bg/micaiah.jpg\
		$HOME/Pictures/bg/roy.jpg\
		>/dev/null 2>&1;
elif [ $ROLL -eq 3 ]; then
	feh --bg-fill\
		$HOME/Pictures/bg/chrom.png\
		$HOME/Pictures/bg/byleth.jpg\
		$HOME/Pictures/bg/link.jpg\
		>/dev/null 2>&1;
elif [ $ROLL -eq 4 ]; then
	random_image="$(find $HOME/Pictures/bg -type f | shuf -n 1)";
	feh --bg-fill\
		$random_image\
		>/dev/null 2>&1;
fi
