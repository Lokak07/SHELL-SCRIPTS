#!/bin/bash


#Scenario: Write a script to create daily log files with a timestamped filename.

# Set the directory where logs will be stored
LOG_DIRECTORY="/home/loka/DEVOPS-PROJECTS/SHELL_SCRIPTING/SHELL-SCRIPTS/DAY-3/log"


#date in current format
current_date=$(date +"%d-%m-%Y")


#saves the log file in this format
LOG_FILE="$LOG_DIRECTORY/log_$current_date.txt"


#write a message to the log file
echo "log entry for $current_date" > "$LOG_FILE"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>" >> "$LOG_FILE"
echo "this is a sample log entry" >> "$LOG_FILE"
echo "logged at $(date +"%H-%M-%S")" >> $LOG_FILE
echo "cheen tapaku dum dum" >> $LOG_FILE

#log file saved

echo "log file saved at $LOG_FILE" add this line to the file 