#!/bin/sh
if [ "$MODE" == "LAPTOP" ] || [ "$MODE" == "THINKPAD" ]
then
    feh --no-fehbg --bg-fill "/home/lillie/Downloads/cyberpunk.png"
else
    feh --no-fehbg --bg-fill "/home/lillie/Downloads/cyberpunk.png" "/home/lillie/Downloads/jinx.png" "/home/lillie/Downloads/nightroad2.png"
fi
