#!/bin/bash

if pgrep -x "fuzzel" > /dev/null; then
    pkill -x "fuzzel"
else
    fuzzel &
fi
