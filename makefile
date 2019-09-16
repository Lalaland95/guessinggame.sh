README.md: guessinggame.sh
	touch README.md
	echo "# Guessing game for peer graded assignment" > README.md
	date >> README.md
	echo "    " >> README.md
	wc -l < guessinggame.sh >> README.md
