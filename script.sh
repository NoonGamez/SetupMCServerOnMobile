#!/bin/bash

pkg update && pkg upgrade -y
pkg install proot-distro wget -y
proot-distro install ubuntu

proot-distro login ubuntu -- bash -c "
    source /etc/profile
    export PS1='[auto] \u@\h:\w\$ '
    echo 'Ubuntu environment ready'
    apt update -y && apt upgrade -y
    apt install wget curl -y
    apt install openjdk-25-jdk -y
    wget -O setupServer.sh https://raw.githubusercontent.com/NoonGamez/SetupMCServerOnMobile/refs/heads/main/SetupMCserver.sh
    wget -O setupPlayit.sh https://raw.githubusercontent.com/NoonGamez/SetupMCServerOnMobile/refs/heads/main/setupPlayit.sh
    chmod +x setupServer.sh
    chmod +x setupPlayit.sh
"
proot-distro login ubuntu

