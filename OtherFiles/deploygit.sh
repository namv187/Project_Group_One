#!/bin/bash

# Variables
REPO_URL="https://github.com/Alexisb710/project480.git"
DEST_DIR="/var/www/"
cd $DEST_DIR
git clone $REPO_URL

# Set appropriate permissions for Apache
echo "Setting correct permissions for Apache..."
sudo chown -R www-data:www-data $DEST_DIR
sudo chmod -R 755 $DEST_DIR

echo "Website files have been deployed to $DEST_DIR."