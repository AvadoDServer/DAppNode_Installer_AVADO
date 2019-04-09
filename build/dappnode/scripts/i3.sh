if test -z "`lspci | grep \"E3-1200\"`"
then
  	echo "no AVADO i3 detected"
 exit
fi
if test -z "`lspci | grep \"RT3090\"`"
then
  	echo "no AVADO i3 detected"
 exit
fi
echo "AVADO i3 detected"

while test -z "`dmesg | grep \"re detected\"`"
do
	echo "polling WiFi driver"
	echo "options rt2800pci nohwcrypt=y" | sudo tee /etc/modprobe.d/rt2800pci.conf
	sudo modprobe -rfv rt2800pci
	sudo modprobe -v rt2800pci
	sleep 1
	ip link set wlan0 up
	ip link set wlp2s0 up
	sleep 2
done
echo "WiFi driver Loaded"
dhclient

