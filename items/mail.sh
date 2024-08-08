#!/bin/bash

mail=(
  update_freq=300
	icon=􀍖
	#icon.font="$FONT:Regular:20.0"
	icon.padding_left=0
	# background.color=$BACKGROUND_1
	# background.border_color=$BACKGROUND_2
	# background.height=30
	# background.corner_radius=9
	# background.border_width=2
	# padding_right=10
    icon.padding_right=5
	label.padding_right=8
	script="$PLUGIN_DIR/app_status.sh"
	click_script="open -a Mail"
)

sketchybar --add item mail right \
           --set mail "${mail[@]}" 


