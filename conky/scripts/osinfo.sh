PRETTY=$(cat /etc/os-release | grep PRETTY_NAME)
PRETTY=${PRETTY#*=}
echo $PRETTY
