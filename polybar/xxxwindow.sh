#!/bin/bash

WM_DESKTOP=$(xdotool getwindowfocus)

if [ $WM_DESKTOP == "1923" ]; then

	echo "%{F#abb3bf} Desktop%{u-}"

elif [ $WM_DESKTOP != "1883" ]; then

	WM_CLASS=$(xprop -id $(xdotool getactivewindow) WM_CLASS | awk 'NF {print $NF}' | sed 's/"/ /g')
	WM_NAME=$(xprop -id $(xdotool getactivewindow) WM_NAME | cut -d '=' -f 2 | awk -F\" '{ print $2 }')

	if [ $WM_CLASS == 'Brave-browser' ]; then

		echo "%{F#e06c75} Brave%{u-}"	

	elif [ $WM_CLASS == 'discord' ]; then

		echo "%{F#61afef} Discord%{u-}"

	elif [ $WM_CLASS == 'ViberPC' ]; then

		echo "%{F#c678dd} Viber%{u-}"

	elif [ $WM_CLASS == 'Code' ]; then

		echo "%{F#61afef} VsCode%{u-}"
	else

		echo "%{F#abb2bf} $WM_CLASS%{u-}"

	fi

fi
