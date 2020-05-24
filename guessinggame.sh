nu=$( ls | wc -l)
echo "Guess how many files does this directory has:"
read ent
function guess {
	while [[ $ent -ne $nu ]]
        do
		if [[ $ent =~ ^[1-9]+$ ]]  
		then
			if [[ $ent -gt $nu ]]
			then
				echo "too high, try again"
				read ent
			elif [[ $ent -lt $nu ]]
			then 
				echo "too low, try again"
				read ent
			fi
	        else 
        	        echo "that's not a valid number, try again"
			read ent
       		fi
	done
	echo "Congrats!"
}
guess
