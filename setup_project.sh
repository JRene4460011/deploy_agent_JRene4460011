#!/usr/bin/env bash
#Project Factory

read -p "Creating the directory. Please provide a name to be attached to the directory name: " input
directory="attendance_tracker_$input"

if [ -d "$directory" ]; then
	echo "Directory $directory already exists!"
else 
	mkdir "$directory"
	echo "Directory $directory is created successfully!"
fi

echo "Creating the $directory files and sub-directories..."

touch $directory/attendance_checker.py
