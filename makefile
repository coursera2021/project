readme:
	touch README.md
	echo "# Test project for _The Unix Workbench_" >> README.md
	echo "Make file run at   " >> README.md
	date --utc >> README.md
	echo "The guessinggame.sh file contains following number of lines:   " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
