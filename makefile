.my_funcitons: all title timestamp lines_of_code clean date cat

all: title timestamp lines_of_code

title: 
	touch README.md
	@echo "Title: Coursera Unix Workbench Assignment" >> README.md

timestamp:
	@echo "Created on: " $$(date -r ./README.md) >> README.md
	
lines_of_code:
	@echo "The guessing script contains " $$(cat ./guessinggame.sh | wc -l) " lines of code" >> README.md

clean:
	rm README.md
