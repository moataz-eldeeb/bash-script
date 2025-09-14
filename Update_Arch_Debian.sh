#!/bin/bash


if [[ EUID -ne 0 ]]
then
	RED='\033[0;31m'
	echo -e "this script must be run as ${RED}root"
	exit 1
fi

echo -e "\n       **** Starting Work                                                       $(date "+%d-%m-%y || %T") **** \n"

sys_arch=$(cat /etc/os-release | grep -o -m1 "arch")
sys_debian=$(cat /etc/os-release | grep -o -m1 "debian")
   
if [[ $sys_arch == "arch" ]]
then
	pacman -Syu
	pacman -Qdtq
elif [[ $sys_debian == "debian" ]]
then
	apt update
	apt -y upgrade
	apt autoremove
	apt autoclean
else
	echo "i dont know this system $sys_arch"
fi

echo -e "\n$(date "+%T") \t script END"
