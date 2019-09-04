all: readme.md
readme.md:
	touch readme.md
	echo "# The guessing game" > readme.md
	echo " The makefile was made the:" >> readme.md
	date +%x" at "%R >> readme.md
	echo " The guessingame.sh has as many lines of code as: " >> readme.md
	wc -l < guessinggame.sh >> readme.md
clean:
	rm readme.md
