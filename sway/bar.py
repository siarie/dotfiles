#!/bin/env python

from datetime import datetime
from psutil import sensors_battery
from subprocess import  check_output
from sys import stdout
from time import sleep

def secs2hours(secs):
    mm, ss = divmod(secs, 60)
    hh, mm = divmod(mm, 60)

    return "{}h {}m".format(hh, mm)

def render(data):
    stdout.write("%s\n" % data)
    stdout.flush()

def network():
    try:
        ssid = check_output("iwgetid -r", shell=True).strip().decode("utf-8")
        return ssid
    except Exception:
        return "offline"

def battery():
    bat = int(sensors_battery().percent)
    prefix = "charging" if sensors_battery().power_plugged else "bat"
    lifetime = sensors_battery().secsleft

    return "{}: {}% {} remaining".format(prefix, bat, secs2hours(lifetime))

def date_time():
    format = datetime.now().strftime("%a, %d %b %H:%M")
    return "{}".format(format)


def main():
    render(
        "{network} | {battery} | {datetime}"
        .format(
            network=network(),
            battery=battery(),
            datetime=date_time()
        )
    )


while True:
    main()
    sleep(1)
