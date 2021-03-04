all: README.md

README.md:  
	echo "# Guessing Game Project" > README.md
	echo -n "Make was run at: " >> README.md
	date "+%Y-%m-%d %H:%M:%S" >> README.md
	echo -n "The number of lines of code in guessinggame.sh file: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >>  README.md

clean:
	rm README.md
