#!/bin/bash

# Combined Discord Update and Launch Script

# Function to update Discord
update_discord() {
    echo "Checking for Discord updates..."
    
    # Create a temporary directory
    TEMP_DIR=$(mktemp -d)

    # Download the latest Discord .deb package
    wget "https://discord.com/api/download?platform=linux&format=deb" -O "$TEMP_DIR/discord.deb"

    # Get the version of the downloaded package
    NEW_VERSION=$(dpkg-deb -f "$TEMP_DIR/discord.deb" Version)

    # Get the currently installed version
    CURRENT_VERSION=$(dpkg-query -W -f='${Version}' discord 2>/dev/null)

    if [ $? -ne 0 ]; then
        echo "Discord is not installed. Installing now..."
        sudo dpkg -i "$TEMP_DIR/discord.deb"
        sudo apt-get install -f -y
    else
        if [ "$NEW_VERSION" != "$CURRENT_VERSION" ]; then
            echo "New version available. Updating Discord..."
            sudo dpkg -i "$TEMP_DIR/discord.deb"
            sudo apt-get install -f -y
        else
            echo "Discord is already up to date."
        fi
    fi

    # Clean up
    rm -rf "$TEMP_DIR"
}

# Function to launch Discord
launch_discord() {
    echo "Launching Discord..."
    /usr/bin/discord "$@"
}

# Main script execution
if [ "$1" == "--update-only" ]; then
    update_discord
elif [ "$1" == "--launch-only" ]; then
    shift  # Remove the --launch-only argument
    launch_discord "$@"
else
    update_discord
    launch_discord "$@"
fi