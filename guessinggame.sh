no_file=$(ls | wc -l)
echo "Guess how many files in the current directory: "
read input

# Function to validate if the input is an integer
function validate {
	re='^[0-9]+$'
	while ! [[ $input2 =~ $re ]]
	do
		echo "Please enter an integer."
		echo "Guess how many files in the current directory: "
		read input3
		let input2=$input3
	done
}

# function to try again
function try_again {
	echo "Guess how many files in the current directory: "
	read input2
	validate
	let input=$input2
}

# main while loop
while [[ $input -ne $no_file ]]
do
	if [[ $input -lt $no_file ]]
	then
		echo "Too low."
		try_again
	elif [[ $input -gt $no_file ]]
	then
		echo "Too high."
		try_again
	fi
done

echo "Congratulaion!"