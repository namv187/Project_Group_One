#!/bin/bash
#you might have to manually install this part for laravel
cd /var/www/
git clone https://github.com/Alexisb710/project480.git
cd project480

# Install Composer dependencies
composer install

#change env.
cp .env.example .env

# Replace DB_DATABASE, DB_USERNAME, and DB_PASSWORD values in .env
# sudo nano .env
echo "Updating database configuration in .env file..."
sed -i 's/^DB_DATABASE=.*/DB_DATABASE=project480/' .env
sed -i 's/^DB_USERNAME=.*/DB_USERNAME=admin/' .env
sed -i 's/^DB_PASSWORD=.*/DB_PASSWORD=password/' .env

# Generate application key
php artisan key:generate

# Install npm dependencies
npm install

# Build the frontend assets (optional, based on your project setup)
npm run build

# Serve the application using Artisan
php artisan serve