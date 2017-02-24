#!/bin/bash
# Main Menu for User Choose Options

echo "Hello"
PS3='Please enter the options you are looking for: '
options=("System Name" "Domain Name" "IP address" "OS name" "OS version" "Quit")

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
		"Quit")
			break
			;;
	esac
done

