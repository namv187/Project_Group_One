# Update package list and install dependencies
sudo apt-get update
sudo apt-get install -y software-properties-common

# Add the repository for PHP 8.2
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

#install git
sudo apt install git -y

#install snap and vscode
sudo apt install snapd -y
sudo apt install code --classic

#install curl
sudo apt install curl -y

# Install Apache, MySQL, PHP 8.2 and required extensions
sudo apt-get install -y apache2 mysql-server php8.2 libapache2-mod-php8.2 php8.2-mysql php8.2-mbstring php8.2-xml php8.2-bcmath php8.2-json php8.2-curl unzip

# Enable PHP 8.2 and configure Apache to use it
sudo a2enmod php8.2

# Install additional extensions
sudo apt-get install -y php8.2-mbstring php8.2-xml php8.2-bcmath php8.2-json php8.2-curl php8.2-zip

sudo systemctl start apache2

sudo systemctl enable apache2

sudo systemctl start mysql

sudo systemctl enable mysql


echo "Installation complete"