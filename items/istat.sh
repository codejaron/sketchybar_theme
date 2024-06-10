
istat=(
	update_freq=2
	
	#icon=$QQ
	#icon.font="$FONT:Regular:20.0"
	#icon.padding_left=0
	# background.color=$BACKGROUND_1
	# background.border_color=$BACKGROUND_2
	# background.height=30
	# background.corner_radius=9
	# background.border_width=2
	# padding_right=10
	#label.padding_right=8
	#script="$PLUGIN_DIR/app_status.sh"
	#click_script="open -a QQ"
	
)

sketchybar --add alias "iStat Menus Status,com.bjango.istatmenus.combined" right\
           --set istat "${istat[@]}"

