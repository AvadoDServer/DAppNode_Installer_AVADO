if test -z "`lspci | grep \"RTL8111\"`"
then
  	echo "no AVADO i5 detected"
 exit
fi
echo "AVADO i5 detected"

# while test -z "`dmesg | grep \"wwwIntel\" | grep \"WiFi\"`"
# do
# 	echo "polling WiFi driver"
# 	sudo modprobe -rfv iwlmvm 
# 	sudo modprobe -v iwlmvm 
# 	sleep 1
# 	ip link set wlan0 up
# 	ip link set wlp1s0 up
# 	sleep 2
# done
# echo "WiFi driver Loaded"
dhclient -v

