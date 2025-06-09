#!/bin/bash

read -p "what is your name?: " name
read -p "what is your surname/family name?: " surname
read -s -N 4 -p "what is your extension number? (max 4 digits): " extension

echo    # <<< adds a newline

read -s -N 4 -p "what access code would you like to use when dialing in? (max 4 digits): " code

echo    # <<< adds a newline


# Set CSV file name
csv_file="extension.csv"

# Append the data to the CSV
timestamp=$(date +"%Y-%m-%d %H:%M:%S")
echo "$timestamp,$name,$surname,$extension,$code" >> "$csv_file"

echo "Your information has been saved to $csv_file."
