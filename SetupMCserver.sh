#!/bin/bash

mkdir mcserver
cd mcserver

read -p "Enter MCServer jar download url: " url
wget -O server.jar $url

echo "java -Xmx1024M -Xms1024M -jar server.jar" >> start.sh
chmod +x start.sh
./start.sh
echo "#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://aka.ms/MinecraftEULA).
#Mon Feb 02 18:28:42 IST 2026
eula=true" > eula.txt
./start.sh


