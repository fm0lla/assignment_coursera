.my_funcitons: all title timestamp lines_of_code clean date cat

all: title timestamp lines_of_code

title: 
	touch README.md
	@echo "1. Title: Coursera Unix Workbench Assignment" >> README.md

timestamp:
	@echo "2. Created on: " $$(date -r ./README.md) >> README.md
	
lines_of_code:
	@echo "3. The guessing script contains " $$(cat ./guessinggame.sh | wc -l) " lines of code" >> README.md

clean:
	rm README.md
