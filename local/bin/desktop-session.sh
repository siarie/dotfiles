#!/bin/sh

export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=river

dinitctl --user start desktop
trap 'dinitctl --user stop desktop' EXIT INT TERM HUP

timestamp="$(date +%F-%R)"
river -log-level debug > /tmp/river-${timestamp}.log 2>&1
