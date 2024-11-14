#!/bin/bash

# Install NVM (Node Version Manager)
echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Load NVM script to the shell
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Install Node.js version v22.11.0 using NVM
echo "Installing Node.js version v22.11.0..."
nvm install v22.11.0
nvm use v22.11.0

# Clone the Laravel project repository
echo "Cloning project480 repository..."
cd /var/www/
git clone https://github.com/Alexisb710/project480.git
cd project480

# Install Composer dependencies
echo "Installing Composer dependencies..."
composer install

# Set up the .env file
echo "Setting up the .env file..."

# Replace DB_DATABASE, DB_USERNAME, and DB_PASSWORD values in .env
echo "Updating database configuration in .env file..."
sed -i 's/^DB_DATABASE=.*/DB_DATABASE=project480/' .env
sed -i 's/^DB_USERNAME=.*/DB_USERNAME=admin/' .env
sed -i 's/^DB_PASSWORD=.*/DB_PASSWORD=password/' .env

# Generate application key
echo "Generating application key..."
php artisan key:generate

# Prompt user to edit the .env file for any other changes
echo "Please review and edit the .env file as needed. Press any key to continue after editing..."
read -n 1 -s -r

# Install npm dependencies
echo "Installing npm dependencies..."
npm install

# Build the frontend assets (optional, based on your project setup)
echo "Building frontend assets..."
npm run build

# Serve the application using Artisan
echo "Starting the Laravel development server..."
php artisan serve
