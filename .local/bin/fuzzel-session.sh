#!/bin/sh -e

menus="lock\nexit\n\nreboot\nshutdown"
action=$(echo -e "$menus" | fuzzel --lines 5 --prompt "$ " --width 24 --dmenu)

case "$action" in
    "lock")
        notify-send "lock command is not supported yet."
        ;;
    "exit")
        riverctl exit
        ;;
    "reboot")
        reboot
        ;;
    "shutdown")
        poweroff
        ;;
esac

