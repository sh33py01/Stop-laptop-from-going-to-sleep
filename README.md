# Stop-laptop-from-going-to-sleep
simple bash script that stops the laptop from going to sleep

-For method one
 This script uses the xdotool command to send an input event to the system,
 which prevents it from going to sleep. The script runs an infinite loop, and in each iteration,
 it moves the mouse by a small distance and then waits for 10 minutes (600 seconds) before moving the mouse again.
 For debian based system use
 - sudo apt-get install xdotool
 
 -For method two
This script uses the xset command to disable the screen saver, turn off the display power management system, 
and prevent the screen from blanking. The script runs an infinite loop, and in each iteration,
it executes the xset commands and then waits for 10 minutes (600 seconds) before executing the commands again.
For debian based system use
-sudo apt-get install x11-xserver-utils

-For method three
The script then defines a sleep interval of 10 minutes (600 seconds). The simulate_activity function is used to simulate keyboard and mouse activity by moving the mouse slightly and pressing and releasing a random key.
In the infinite loop, the script first disables the screen saver and prevents the laptop from going to sleep using the xset command. It then calls the simulate_activity function to simulate keyboard and mouse activity.
Finally, it waits for the specified interval before repeating the loop.
