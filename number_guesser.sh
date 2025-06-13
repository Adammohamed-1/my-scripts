#!/bin/bash

# Number Guesser Game
# The script picks a random number between 1 and 100
# The user tries to guess the number until they get it right

# Generate a random number between 1 and 100
target=$(( RANDOM % 100 + 1 ))

# Initialize user guess variable
guess=0

echo "Welcome to the Number Guesser game!"
echo "Try to guess the number between 1 and 100."

# Loop until the user guesses the correct number
while [ $guess -ne $target ]; do
  # Prompt user for their guess
  read -p "Enter your guess: " guess

  # Check if the input is a valid number
  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    continue
  fi

  # Compare guess to the target number and give feedback
  if [ $guess -lt $target ]; then
    echo "Too low, try again."
  elif [ $guess -gt $target ]; then
    echo "Too high, try again."
  fi
done

# When loop ends, the guess is correct
echo "Congratulations! You guessed the number $target."

