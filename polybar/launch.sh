killall polybar
if [ "$MODE" == "LAPTOP" ]
then
    polybar -c ~/.config/polybar/configlaptop.ini &
elif [ "$MODE" == "THINKPAD" ]
then
    polybar -c ~/.config/polybar/configthinkpad.ini &
else
    polybar -c ~/.config/polybar/config.ini &
fi
