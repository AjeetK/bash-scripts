#!bin/bash -x

#Script to open new terminal with multiple tabs running different command in each tab

#Following is the command

gnome-terminal --tab -e "bash -c \"echo first command in tab1; echo second command in tab1; exec bash\"" --tab -e "bash -c \" echo this is first command in tab2; echo second command in tab2; exec bash\""

#Description of command  :-
<<description 
	gnome-terminal opens a new terminal
	--tab opens a tab 
	-e option makes the command not to be interpreted by the current terminal
	-e takes argument as string which in-turn is a command to be executed in the newly opened tab
description

	
