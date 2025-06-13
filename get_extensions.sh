#!/bin/bash

# Ask for the user's first name and store it in the variable 'name'
read -p "What is your name?: " name

# Ask for the user's surname and store it in the variable 'surname'
read -p "What is your surname/family name?: " surname

# Present phone type options using the 'select' menu
PS3="What phone would you like to work with the new system?: "
select phone in Headset Handheld; do
  # Store the selected phone option in the variable 'phone' and show confirmation
  echo "You will receive a $phone phone"
  break
done

# Present department options using the 'select' menu
PS3="What is your department?: "
select department in Finance Sales Customer_Service Engineering; do
  # Store the selected department in the variable 'department' and show confirmation
  echo "Your department is $department"
  break
done

# Ask the user for their 4-digit extension number (input hidden as they type)
read -s -N 4 -p "What is your extension number? (max 4 digits): " extension
echo    # (adds a newline for better formatting after silent input)

# Ask the user for their 4-digit access code (input hidden as they type)
read -s -N 4 -p "What access code would you like to use when dialing in? (max 4 digits): " code
echo    # (adds a newline for better formatting after silent input)

# Set the name of the CSV file where the information will be saved
csv_file="extension.csv"

# Generate a timestamp for when the entry was made
timestamp=$(date +"%Y-%m-%d %H:%M:%S")

# Append all collected data to the CSV file in a comma-separated format
echo "$timestamp,$name,$surname,$department,$phone,$extension,$code" >> "$csv_file"

# Confirm to the user that the data has been saved
echo "Your information has been saved to $csv_file."


