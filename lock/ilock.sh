#!/bin/sh


IMAGE="/home/luka/Pictures/lockScreen/lock-pin.png"

if [ ! -e "$IMAGE" ]; then
  # Get copy of wallpaper
  WALLP=/home/luka/Pictures/lockScreen/pin.png
  cp $WALLP $IMAGE

  # Scale it to fit screen
  #convert "$IMAGE" -resize 1920x1080^ -gravity center -extent 1920x1080 $IMAGE

  # Add Lock Icon
  ICON_ORIG="/home/luka/Pictures/lockScreen/lock_white.png"
  ICON="/tmp/lock_icon.png"
  cp $ICON_ORIG $ICON
  convert "$ICON" -resize 180x180 "$ICON"
  convert "$IMAGE" "$ICON" -gravity center -composite "$IMAGE"
fi

