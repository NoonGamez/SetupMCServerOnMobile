#!/bin/bash

mkdir mcserver
cd mcserver

read -p "Enter MCServer jar download url: " url
wget -O server.jar $url

echo "java -Xmx1024M -Xms1024M -jar server.jar" >> start.sh
chmod +x start.sh
./start.sh

#Accept eula
read -p "You have to accept eula: (y/n) " answer
if [ $answer = "y" ] || [ $answer = "Y" ] || [ $answer = "yes" ]; then
	echo "#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://aka.ms/MinecraftEULA).
#Mon Feb 02 18:28:42 IST 2026
eula=true" > eula.txt
else
	echo "Eula not accepted, script exited"
	exit
fi

echo "Completed"
./start.sh


