#!/bin/bash

# Define variables
GITHUB_REPO="https://github.com/namv187/DB.git"
CLONE_DIR="/tmp/db_repo"
SQL_FILE="mysql.sh" # Adjust the name if the SQL file has a different name
DOWNLOAD_PATH="$CLONE_DIR/$SQL_FILE"
MYSQL_USER="admin"
MYSQL_PASSWORD="password"
DATABASE_NAME="project480"

# Clone the Git repository
echo "Cloning the database repository..."
if [ -d "$CLONE_DIR" ]; then
    sudo rm -rf "$CLONE_DIR"
fi
git clone "$GITHUB_REPO" "$CLONE_DIR"

# Check if the SQL file exists
if [ ! -f "$DOWNLOAD_PATH" ]; then
    echo "Error: SQL file not found at $DOWNLOAD_PATH"
    exit 1
fi

# Run MySQL commands to set up database and user
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
