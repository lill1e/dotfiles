killall polybar
if [ "$MODE" == "LAPTOP" ]
then
    polybar -c ~/.config/polybar/configlaptop.ini &
else
    polybar -c ~/.config/polybar/config.ini &
fi
