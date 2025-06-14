#!/bin/bash

# Countdown Timer Script
# Accepts minutes and seconds from user input and counts down to 0

# Parse command-line options
while getopts "m:s:" opt; do 
    case $opt in
        m) minutes=$OPTARG ;;  # Capture minutes
        s) seconds=$OPTARG ;;  # Capture seconds
        ?)  echo "Usage: $0 -m <minutes> -s <seconds>" 
            exit 1
            ;;  # Handle invalid input
    esac
done

# Default values if not provided
minutes=${minutes:-0}
seconds=${seconds:-0}

# Calculate total time in seconds
total_seconds=$(( minutes * 60 + seconds ))

# Countdown loop
while [ $total_seconds -gt 0 ]; do
    echo "$total_seconds seconds remaining"
    sleep 1
    ((total_seconds--))
done

# Final message
echo "Time's up!"

