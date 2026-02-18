#!/usr/bin/env bash
#Project Factory

read -p "Creating the directory. Please provide a name to be attached to the directory name: " input
directory="attendance_tracker_$input"

# Checking whether the directory exists or not, so as to ensure there's no duplicates after creating the directory.
if [ -d "$directory" ]; then
	echo "Directory $directory already exists!"
else 
	mkdir "$directory"
	echo "Directory $directory is created successfully!"
fi

echo "Creating the $directory files and sub-directories..."
sleep 2

# Here I'm checking whetherthe attendance_checker.py file exists within the main folder/directory.
if [ -f "$directory/attendance_checker.py" ]; then
	echo "The file attendance_checker.py already exists in your directory!"
else
	cp templates/attendance_checker.py "$directory/"
       	echo "Created the file attendance_checker.py in your directory!"
fi

# Here I'm checking whether the Helpers folder with its contents exists within the main folder (directory), and then create them or not.
if [ -d "$directory/Helpers" ]; then
	echo "The sub-folder $directory/Helpers already exists in your main directory!"
	if [ -f "$directory/Helpers/assets.csv" ]; then
		echo "The file assets.csv already exists in your Helpers sub-directory!"
	else 
		cp templates/assets.csv "$directory/Helpers"
		echo "Created the file assets.csv in your Helpers sub-directory"
	fi

	if [ -f "$directory/Helpers/config.json" ]; then
		echo "The file config.json already exists in your Helpers sub-directory!"
	else 
		cp templates/config.json "$directory/Helpers"
		echo "Created the file config.json in your Helpers sub-directory"
	fi
else
	mkdir "$directory/Helpers"
	echo "Successfully created the Helpers sub-folder (sub-directory)!"

	cp templates/assets.csv "$directory/Helpers"
	echo "Created the file assets.csv in your Helpers sub-directory"

	cp templates/config.json "$directory/Helpers"
	echo "Created the file config.json in your Helpers sub-directory"
fi

# Here I'm checking whether the reports folder and its contents exists within the main folder (directory), and then create them or not.
if [ -d "$directory/reports" ]; then
	echo "The sub-folder $directory/reports already exists in your main directory!"
	if [ -f "$directory/reports/reports.log" ]; then
		echo "The file reports.log already exists in your reports sub-directory!"
	else
		cp templates/reports.log "$directory/reports"
		echo "Created the file reports.log in your reports sub-directory"
	fi
else
	mkdir "$directory/reports"
	echo "Successfully created the reports sub-folder (sub-directory)!"

	cp templates/reports.log "$directory/reports"
	echo "Created the file reports.log in your reports sub-directory"
fi

sleep 1

# Dynamic configuration --- asking the user whether they'd like to update the attendance thresholds.

echo "--------------------------------------------------------------------------------------------------------------------"
echo "Dynamic configuration: deciding on whether to update the attendance thresholds."

read -p "Would you like to update the value of Warning (default 75%)? If no, leave the space blank. If yes, write here the new value: " warning
read -p "Would you like to update the value of Failure (default 50%)? If no, leave the space blank. If yes, write here the new value: " failure




















































