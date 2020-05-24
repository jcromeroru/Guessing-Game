all:README.md

README.md:
	touch README.md
	echo "**Guessing Game**-" > README.md
	echo "Date and time of execution:" >> README.md
	date >> README.md
	echo "How many lines of code are written in guessinggame?:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
	cat README.md
