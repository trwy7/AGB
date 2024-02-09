#!/bin/bash
if [ "$EUID" -ne 0 ]
	then echo "Trying to run as root"
	sudo ./update.sh
	exit
fi
echo Make sure you have ran /backup and /shutdown if the bot is running, you have 5 seconds to CTRL-C
sleep 5s
sudo docker build -t trwy7/agb .
sudo docker stop agb
sudo docker remove agb
./start.sh