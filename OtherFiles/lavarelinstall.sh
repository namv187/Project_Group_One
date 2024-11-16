#!/bin/bash
#you might have to manually install this part for laravel
cd /var/www/project480
#git clone https://github.com/Alexisb710/project480.git
#cd project480

sudo chown -R $USER:$USER /var/www/project480

# Install Composer dependencies
# would have to manually do this part
sudo composer install

#change env.
sudo cp .env.example .env

# Replace DB_DATABASE, DB_USERNAME, and DB_PASSWORD values in .env
sudo sed -i 's/^DB_DATABASE=.*/DB_DATABASE=project480/' .env
sudo sed -i 's/^DB_USERNAME=.*/DB_USERNAME=admin/' .env
sudo sed -i 's/^DB_PASSWORD=.*/DB_PASSWORD=password/' .env
#
# Generate application key
sudo php artisan key:generate

# Install npm dependencies #errors here
npm install
npm run build

# Serve the application using Artisan
php artisan serve