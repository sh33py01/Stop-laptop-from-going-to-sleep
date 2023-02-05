#!/bin/bash

if ! command -v xset > /dev/null || ! command -v xdotool > /dev/null; then
  echo "Error: xset or xdotool not found."
  echo "Please install xset and xdotool before running this script."
  exit 1
fi

interval=600

# Function to simulate keyboard and mouse activity
function simulate_activity() {
  # Move the mouse slightly
  xdotool mousemove_relative 1 1
  
  # Press and release a random key
  xdotool key $(printf "a%s\n" {a..z} {A..Z} {0..9} | shuf | head -1)
}

# Keep the laptop awake
while :
do
  # Disable the screen saver and prevent the laptop from going to sleep
  xset s off
  xset -dpms
  xset s noblank
  
  # Simulate keyboard and mouse activity
  simulate_activity
  
  sleep $interval
done
