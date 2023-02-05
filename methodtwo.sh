#!/bin/bash

# Keep the laptop awake
while :
do
  # Disable the screen saver and prevent the laptop from going to sleep
  xset s off
  xset -dpms
  xset s noblank
  sleep 600
done
