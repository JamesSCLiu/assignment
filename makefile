

All: guessinggame.sh
	@echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	@echo "## James Liu" >>	README.md
	@echo "Created date: $$(date +%D)" >> README.md
	@echo "Created time: $$(date +%T)" >> README.md
	@echo "There are $$(cat guessinggame.sh | wc -l | xargs) lines of code in guessinggame.sh." >> README.md