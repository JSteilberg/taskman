#!/bin/bash
# taskman.sh
# Ver. 1.0, Reldate 29Jul17

# Opens System Monitor.
# If system monitor is already open, moves it to current window.

found_window=$(wmctrl -l | grep "System Monitor")

if [ ${#found_window} -eq 0 ]
then
    exec gnome-system-monitor
else
    exec wmctrl -R "System Monitor"
fi
