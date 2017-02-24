mynumber=$(($RANDOM % 10 + 1))

guess=0

while [ $guess -ne $mynumber ]; do
	read -p "Pick a number from 1 to 10: " guess
	while [[ ! "$guess" =~ ^[1-9]0*$ ]]; do
		read -p "Pick a number from 1 to 10: " guess
	done

	if [ $guess -lt $mynumber ]; then
		echo "Too small, try it again"
	elif [ $guess -gt $mynumber ]; then
		echo "Too big, try again"
	fi
done

