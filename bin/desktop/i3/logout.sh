i3-nagbar \
	-t warning \
	-m 'Do you really want to exit i3?' \
	-B 'Yes' "notify-send 'system' 'exiting i3...' -i face-tired; i3-msg exit"
