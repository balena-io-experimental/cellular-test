#!/bin/bash

# Setting Network Manager bus so that our client can communicate with it
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

# Run connection check script every 15mins
# wait indefinitely
while :
do
	# Log signal quality
	mmcli -L | grep -q Modem
	if [ $? -eq 0 ]; then
		MODEM_NUMBER=`mmcli -L | grep Modem | sed -e 's/\//\ /g' | awk '{print $5}'` 
		echo `mmcli -m ${MODEM_NUMBER} --command="AT+CSQ"`
	fi
	sleep 300;
done