#!/bin/sh

# Setup script for setting up a new macos/linux machine
echo "Starting setup"

if [ "$(uname)" = "Darwin" ]; then
    echo "Detecting MacOS"
    # calling macos script
    sh mac-setup.sh
fi
