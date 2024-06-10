#!/usr/bin/env bash

# 加载颜色和图标配置
source "$HOME/.config/sketchybar/colors.sh"
source "$HOME/.config/sketchybar/icons.sh"

# 配置 CPU 使用率显示
cpu_percent=(
    label.font="$FONT:Heavy:12"
    label=CPU%
    label.color="$TEXT"
    icon="$CPU"
    icon.color="$BLUE"
    update_freq=2
    mach_helper="$HELPER"
)

sketchybar --add item cpu.percent right \
           --set cpu.percent "${cpu_percent[@]}"

# 配置内存使用率显示
memory=(
    label.font="$FONT:Heavy:12"
    label.color="$TEXT"
    icon="$MEMORY"
    icon.font="$FONT:Bold:16.0"
    icon.color="$GREEN"
    update_freq=15
    script="$PLUGIN_DIR/ram.sh"
)

sketchybar --add item memory right \
           --set memory "${memory[@]}"

# 配置磁盘使用率显示
# disk=(
#     label.font="$FONT:Heavy:12"
#     label.color="$TEXT"
#     icon="$DISK"
#     icon.color="$MAROON"
#     update_freq=60
#     script="$PLUGIN_DIR/disk.sh"
# )

# sketchybar --add item disk right \
#            --set disk "${disk[@]}"

# 配置网络流量显示
network_down=(
    y_offset=-7
    label.font="$FONT:Heavy:10"
    label.color="$TEXT"
    icon="$NETWORK_DOWN"
    icon.font="$NERD_FONT:Bold:16.0"
    icon.color="$GREEN"
    icon.highlight_color="$BLUE"
    update_freq=1
)

network_up=(
    background.padding_right=-62
    y_offset=7
    label.font="$FONT:Heavy:10"
    label.color="$TEXT"
    icon="$NETWORK_UP"
    icon.font="$NERD_FONT:Bold:16.0"
    icon.color="$GREEN"
    icon.highlight_color="$BLUE"
    update_freq=1
    script="$PLUGIN_DIR/network.sh"
)

sketchybar --add item network.down right \
           --set network.down "${network_down[@]}" \
           --add item network.up right \
           --set network.up "${network_up[@]}"

# 配置分隔符
# separator_right=(
#     icon=􀆉
#     icon.font="$NERD_FONT:Regular:16.0"
#     background.padding_left=10
#     background.padding_right=15
#     label.drawing=off
#     click_script='sketchybar --trigger toggle_stats'
#     icon.color="$TEXT"
# )

sketchybar --add item separator_right right \
           --set separator_right "${separator_right[@]}"