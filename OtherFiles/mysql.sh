#!/bin/bash

# Define variables
GITHUB_URL="https://raw.githubusercontent.com/namv187/Project_Group_One/main/OtherFiles/mysql.sh"
DOWNLOAD_PATH="/var/www/mysql.sh"
MYSQL_USER="admin"
MYSQL_PASSWORD="password"
DATABASE_NAME="project480"

# Download SQL file from GitHub
echo "Downloading SQL file from GitHub..."
curl -o "$DOWNLOAD_PATH" "$GITHUB_URL"

# Check if the file was downloaded
if [ ! -f "$DOWNLOAD_PATH" ]; then
    echo "Failed to download the SQL file. Exiting."
    exit 1
fi

# Run MySQL commands
echo "Setting up MySQL database and user..."
sudo mysql -u root <<MYSQL_SCRIPT
CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;
CREATE USER IF NOT EXISTS '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$MYSQL_USER'@'localhost';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

# Import SQL dump into the database
echo "Importing SQL file into the database..."
sudo mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $DATABASE_NAME < "$DOWNLOAD_PATH"

# Check if the import was successful
if [ $? -eq 0 ]; then
    echo "Database setup and SQL import completed successfully."
else
    echo "Failed to import the SQL file. Please check the error messages above."
fi