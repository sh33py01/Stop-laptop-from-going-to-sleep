#!/bin/bash

# Keep the laptop awake
while :
do
  # Send an input event to the system to prevent it from sleeping
  xdotool mousemove_relative 1 1
  sleep 600
done
