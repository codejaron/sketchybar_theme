#!/bin/bash

qq=(
	update_freq=2
	icon=$QQ
	icon.font="$FONT:Regular:20.0"
	icon.padding_left=0
	# background.color=$BACKGROUND_1
	# background.border_color=$BACKGROUND_2
	# background.height=30
	# background.corner_radius=9
	# background.border_width=2
	# padding_right=10
	label.padding_right=8
	script="$PLUGIN_DIR/app_status.sh"
	click_script="open -a QQ"
)

sketchybar --add item qq right \
	--set qq "${qq[@]}"


# qq=(
# 	update_freq=2
# 	#icon=$QQ
# 	#icon.font="$FONT:Regular:20.0"
# 	#icon.padding_left=0
# 	background.padding_left=15 
# 	icon.font.size=18
# 	# background.color=$BACKGROUND_1
# 	# background.border_color=$BACKGROUND_2
# 	# background.height=30
# 	# background.corner_radius=9
# 	# background.border_width=2
# 	# padding_right=10
# 	#label.padding_right=8
# 	script="$PLUGIN_DIR/qq.sh"
# 	click_script="open -a QQ"
# )

# sketchybar --add item qq right \
# 	--set qq "${qq[@]}"
# 	--subscribe QQ system_woke


