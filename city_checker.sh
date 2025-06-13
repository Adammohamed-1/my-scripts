#!/bin/bash

# City Selector Script
# This script allows the user to select a city and returns the corresponding country.

# Prompt text for select menu
PS3="Choose a city from the list below: "

# Display city options to user
select city in Tokyo London Los-angeles Moscow Dubai Manchester New-york Paris Bangalore Johannesburg Istanbul Milan "Abu-Dhabi" Pune Nairobi Berlin Karachi; do

echo "You have chosen $city"

# Match selected city to country
case "$city" in
	Tokyo)
		country="Japan" ;;
	London | Manchester)
		country="United Kingdom" ;;
	Los-angeles | New-york)
		country="United States" ;;
	Moscow)
		country="Russia" ;;
	Dubai | "Abu-Dhabi")
		country="United Arab Emirates" ;;
	Paris)
		country="France" ;;
	Bangalore | Pune)
		country="India" ;;
	Johannesburg)
		country="South Africa" ;;
	Istanbul)
		country="Turkey" ;;
	Milan)
		country="Italy" ;;
	Nairobi)
		country="Kenya" ;;
	Berlin)
		country="Germany" ;;
	Karachi)
		country="Pakistan" ;;
	*)echo "Invalid option."
break
;;
esac

# Output result only if a valid country was set
if [[ -n "$country" ]]; then
echo "$city is in $country"
fi

break
done
