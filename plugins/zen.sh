#!/bin/bash

zen_on() {
  sketchybar --set wifi drawing=off \
             --set calendar icon.drawing=off \
             --set volume_icon drawing=off \
             --set brew drawing=off \
             --set volume drawing=off \
             --set battery drawing=off
}
#--set '/cpu.*/' drawing=off \
#--set front_app drawing=off \
#--set apple.logo drawing=off \
#--set spotify.anchor drawing=off \
#--set spotify.play updates=off \
#--set separator drawing=off \
#--set github.bell drawing=off\
zen_off() {
  sketchybar --set wifi drawing=on \
             --set calendar icon.drawing=on \
             --set volume_icon drawing=on \
             --set brew drawing=on \
             --set volume drawing=on \
             --set battery drawing=on

}
#--set separator drawing=on \
#--set github.bell drawing=on\
#--set spotify.play updates=on \
#--set '/cpu.*/' drawing=on \
#--set front_app drawing=on \
#--set apple.logo drawing=on \

if [ "$1" = "on" ]; then
  zen_on
elif [ "$1" = "off" ]; then
  zen_off
else
  if [ "$(sketchybar --query battery | jq -r ".geometry.drawing")" = "on" ]; then
    zen_on
  else
    zen_off
  fi
fi

