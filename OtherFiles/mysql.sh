#!/bin/bash

# Set MySQL credentials
DB_NAME="cit480_db"
DB_USER_NEW="admin"
DB_PASSWORD_NEW="password"
SQL_DUMP_PATH="/var/www/html/cit480-project/db/cit480_db_dump.sql"

# Run MySQL commands
sudo mysql <<MYSQL_SCRIPT
CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS 'admin'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER_NEW'@'localhost';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

# Import SQL dump into the database
sudo mysql $DB_NAME < "$SQL_DUMP_PATH"