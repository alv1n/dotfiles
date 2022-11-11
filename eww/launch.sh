
killall -q eww
while pgrep -u $UID polybar > /dev/null; do sleep 1; done
eww open bar0
