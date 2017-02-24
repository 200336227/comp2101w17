#!/bin/bash
# Main Menu for User Choose Options

echo "Hello. Today is `date`"
PS3='Please enter the options you are looking for: '
options=("System Name" "Domain Name" "IP address" "OS name" "OS version" "CPU description" "Memory installed" "Disk space" "Printers" "Software" "Quit")

# For hostname
host=$(hostname)

# For domain name
dns=$(dnsdomainname)

# For IP address
interfaces=( $(ifconfig | grep '^[A-Za-z]' | awk '{print $1}') )
ip0=$(ifconfig ${interfaces} | sed -n '/inet addr:/s/.*addr:\([0-9.][0-9.]*\).*/\1/p')

# For OS name and version
osname=$(uname -mrs | awk '{print $1}')
osversion=$(uname -mrs | awk '{print $2}')

# For CPU specification
cpu=$(lscpu | sed -n '2p;13p;15p' && printf \n)

# For Memory installed
mem=$(free -h | sed -n '1,2p')

# For available disk space
disk=$(df -h | sed -n '1p;4p')

# For List of installed printers
print=$(lpstat -p | awk '{ print $2}')

# For list of installed software
soft=$(cat /var/lib/apt/extended_states)

# Main script
select opt in "${options[@]}"
do
	case $opt in
		"System Name")
			echo "You choose option 1"
			sleep 3
			if [ -z "$host" ]
				then echo "Unable to determine the hostname"
				else echo "The system you are currently using is named $host"
			fi
			;;
		"Domain Name")
			echo "You choose option 2"
			sleep 3
			if [ -z "$dns" ]
				then echo "Unable to determine the Domain and/or no Domain on this host"
				else echo "The system you are currently using has domain name  $dns"
			fi
			;;
		"IP address")
			echo "You choose option 3"
			sleep 3
			echo "The current system has interface ${interfaces} has ip address $ip0"
			;;
		"OS name")
			echo "You choose option 4"
			sleep 3
			echo "The name of the current OS is $osname"
			;;
		"OS version")
			echo "You choose option 5"
			sleep 3
			echo "The current OS version is $osversion"
			;;
		"CPU description")
			echo "You choose option 6"
			sleep 3
			echo -e "The current system's CPU specification\n$cpu"
			;;
		"Memory installed")
			echo "You choose option 7"
			sleep 3
			echo -e "Installed memory of the current system is\n$mem"
			;;
		"Disk space")
			echo "You choose option 8"
			sleep 3
			echo -e "Disk space of the current system is\n$disk"
			;;
		"Printers")
			echo "You choose option 9"
			sleep 3
			if [ -z $print ]
				then echo "There is no printers install on this system"
				else echo "The printers for this system is/are $print"
			fi			
			;;
		"Software")
			echo "You choose option 10"
			sleep 3
			echo -e "The current system has installed following software\n$soft"
			;;
		"Quit")
			break
			;;
	esac
done

