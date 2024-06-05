#!/bin/bash

str=$(spt pb -f "%s|%t - %a" 2>/dev/null)
code=$?
status=${str%%|*}
str=${str#*|}
if [[ $code != 0 || $status == "⏸" ]]
then
    echo "No Music Playing"
else
    echo "$str"
fi
