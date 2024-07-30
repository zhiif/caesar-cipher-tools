#!/bin/bash

# The installation directory:
DIR="/usr/local/bin";

# The name of the program after installation:
PROGRAM="caesar";

# Path to the Python script
SCRIPT_PATH="$(dirname "$0")/win.py"

# Show error message and quit
die(){
    if [ "$*" ]; then
        echo "$*"
    fi
    exit 1
}

# Check if the Python script exists
if [ ! -f "$SCRIPT_PATH" ]; then
    die "Python script not found at $SCRIPT_PATH"
fi

# Execute the Python script
python3 "$SCRIPT_PATH" "$@"
