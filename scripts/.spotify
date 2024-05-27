#!/bin/bash

str=$(spt pb -f "%s|%t - %a" 2>/dev/null)
code=$?
status=${str%%|*}
str=${str#*|}
if [[ $code != 0 || $status == "⏸" ]]
then
    echo "%{F#5f566b}No Music Playing"
else
    echo "%{F#5f566b}Currently Playing: %{F-}$str"
fi
