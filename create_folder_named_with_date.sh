#!bin/bash
#Script to create required number of directories/folders having date as folder name

#Taking number of folder as input 
declare -i number
echo "Hello, How many folders you want to create?? : "
read number

#Asking for path where folders has to be created
echo "Okay, tell me the path where you want to create folders?? (ex- ~/Desktop)"
read path
#echo $path

#check if the path exists, else display the message "path doesn't exist"
if [ -e "$path" ] 
  then
  # Control will enter here if $path exists
  echo "path exists!!!!"

  #Asking the user to give date as input, date from which the folder naming has to be started
  echo "Now tell me the date from which you want to create the folders (format : yyyy-mm-dd)"
  read from


  #Endtering the directory where folder has to be created
  cd $path 

  #loop to increment date and create directory 
  for (( i=0; i<=$number; i++ ))
	do
		#Incrementing date
	    NEXT_DATE=$(date +%m-%d-%Y -d "$from + $i day") 
   
  		#echo $NEXT_DATE
  		#Creating the directory
   		#mkdir $NEXT_DATE
   		if [ -d "$NEXT_DATE" ]
   		then
   			echo "oops!! $NEXT_DATE Directory already exists"
        else
        	
        	mkdir $NEXT_DATE
            echo "$NEXT_DATE directory created"
		fi


	done
	echo "Directory creation successfull!!!"
else
	echo "oops!!! Path doesn't exists!!!"
fi









