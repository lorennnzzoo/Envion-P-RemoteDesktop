#!/bin/bash

# Update and upgrade the system
echo "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Add Anydesk GPG key and repository
echo "Adding Anydesk GPG key and repository..."
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk.list

# Update the package list again
echo "Updating package list after adding Anydesk repository..."
sudo apt update

# Install Anydesk
echo "Installing Anydesk..."
sudo apt install anydesk -y

# Display Anydesk version
echo "Anydesk installed successfully. Checking version..."
anydesk --version

# Launch Anydesk
echo "Launching Anydesk..."
anydesk
