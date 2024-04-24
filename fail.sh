#!/bin/bash

# Loop indefinitely until the command fails
while true; do
    # Generate a random number and check if it is less than the specified threshold
    if (( $RANDOM % 100 == 0 )); then
        echo "Command failed."
        exit 1  # Exit with a failure status
    else
        echo "Command succeeded."
    fi
done
