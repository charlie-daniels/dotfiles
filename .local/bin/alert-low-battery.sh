#!/bin/bash

# Alert notif manager when battery less than 15%

bat_cap="/sys/class/power_supply/BAT0/capacity"

if [ -f	$bat_cap ]; then
	if [ $(cat $bat_cap) -lt 15 ]; then
		notify-send --urgency=critical "Battery Critical" "Connect charger now."
	fi
fi

# Requirements:
#
# /etc/systemd/system/alert-low-battery.service
#
# [Unit]
# Description=Check for low battery every 5 minutes
# After=network.target
#
# [Service]
# Type=simple
# ExecStart=/home/charlie/.local/bin/alert-low-battery.sh
# Restart=on-failure
# Environment=DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
# User=charlie

# Requires the following timer in /etc/systemd/system
#
# [Unit]
# Description=Run critical battery check every 5 minutes
# 
# [Timer]
# OnBootSec=5min
# OnUnitActiveSec=5min
# Unit=alert-low-battery.sh
#
# [Install]
# WantedBy=timers.target
