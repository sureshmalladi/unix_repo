README.md: guessinggame.sh
	echo "The Unix workbench project" > README.md
	echo "" >> README.md
	echo "Date and Time at which make was run: $$(date)" >> README.md
	echo "" >> README.md
	echo "Number of lines of code contained in guessinggame.sh:" >> README.md
	wc -l < guessinggame.sh >> README.md

.PHONY: clean
clean:
	rm -f README.md

