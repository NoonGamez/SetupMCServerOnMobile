#!/bin/bash

pkg update && pkg upgrade -y
pkg install proot-distro wget -y
proot-distro install ubuntu
proot-distro login ubuntu


