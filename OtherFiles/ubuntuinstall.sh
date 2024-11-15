#!/bin/bash

# Update package list and install dependencies
sudo apt-get update
sudo apt-get install -y software-properties-common

# Add the repository for PHP 8.2
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update

# Install Git
sudo apt install git -y

# Install Snap and Visual Studio Code
sudo apt install snapd -y
sudo snap install code --classic

# Install Curl
sudo apt install curl -y

# Install Apache, MySQL, PHP 8.2, and required PHP extensions
sudo apt install mysql-server -y

sudo apt install apache2 -y

sudo apt install php8.2 -y

sudo apt install libapache2-mod-php8.2 -y

sudo apt install php8.2-mysql -y

sudo apt install php8.2-mbstring -y

sudo apt install php8.2-xml -y

sudo apt install php8.2-bcmath -y

sudo apt install php8.2-curl -y 

sudo apt install unzip -y

sudo apt install php8.2-intl -y
# Enable PHP 8.2 module for Apache
sudo a2enmod php8.2

# Install additional PHP extensions
sudo apt-get install -y php8.2-zip

# Start and enable Apache to run on startup
sudo systemctl start apache2
sudo systemctl enable apache2

# Start and enable MySQL to run on startup
sudo systemctl start mysql
sudo systemctl enable mysql

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Load NVM script to the shell
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  

# Alternatively, you can source the bashrc to ensure NVM is available
source ~/.bashrc

# Install Node.js version v22.11.0 using NVM
nvm install v22.11.0
nvm use v22.11.0

#install composer
sudo apt install composer -y

# Confirm installation completion
echo "Installation complete"