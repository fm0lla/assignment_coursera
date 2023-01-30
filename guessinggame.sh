
#!/usr/bin/bash
#
# guessing game for Coursera assignment 

guess=-1
typeset -i num=0

echo -e "Guess the number of files in the current directory \n"

### Generate random number
answer=($(ls -1|wc -l))

### Play game
while (( guess != answer )); do
	num=num+1
	read -p "Enter here your guess: " guess
	if (( guess < answer )); then
		echo "Try again (hint: a bit higher)..."
	elif (( guess > answer )); then
		echo "Try again (hint: a bit lower)..."
	fi
done
echo -e "Correct! It took you only $num guesses.\n"
echo "The files are listed below: "
ls -l .

