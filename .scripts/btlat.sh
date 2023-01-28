#!/bin/bash
bluezcard=$(pactl list cards short | awk '/bluez/{print $2}')
pactl set-card-profile "$bluezcard" a2dp_sink
pactl set-card-profile "$bluezcard" headset_head_unit
pactl set-card-profile "$bluezcard" a2dp_sink
