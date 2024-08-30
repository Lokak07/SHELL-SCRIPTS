#! /bin/bash

#Write a script to automate the setup of your development environment (e.g., installing necessary packages and tools).

# Update package list and upgrade all packages
echo "Updating package list and upgrading installed packages..."
sudo apt-get update -y && sudo apt-get upgrade -y

# Install basic packages
echo "Installing basic packages: curl, git, vim, and build-essential..."
sudo apt-get install -y curl git vim build-essential

# Install Docker
echo "Installing Docker..."
if ! [ -x "$(command -v docker)" ]; then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    sudo usermod -aG docker $USER
    echo "Docker installed successfully."
else
    echo "Docker is already installed."
fi

# Install Node.js and npm
echo "Installing Node.js and npm..."
if ! [ -x "$(command -v node)" ]; then
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt-get install -y nodejs
    echo "Node.js and npm installed successfully."
else
    echo "Node.js is already installed."
fi

# Install Python and pip
echo "Installing Python and pip..."
if ! [ -x "$(command -v python3)" ]; then
    sudo apt-get install -y python3 python3-pip
    echo "Python and pip installed successfully."
else
    echo "Python is already installed."
fi

echo "Cleaning up..."
sudo apt-get autoremove -y
sudo apt-get clean

# Finish
echo "Development environment setup complete!"

# Reminder for Docker group change
echo "Please log out and log back in to apply Docker group changes."