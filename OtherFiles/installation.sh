#!/bin/bash

# Update and install Apache, MySQL, PHP

sudo apt update

sudo apt install apache2 mysql-server php libapache2-mod-php php-mysql -y

sudo apt install php php-mbstring php-xml php-bcmath php-json php-curl unzip -y

sudo apt install git -y

#install vscode
sudo apt install snapd -y
sudo apt install code --classic

# DEBIAN_FRONTEND=noninteractive makes the script non interactive
# Install OpenSSH Server
#sudo DEBIAN_FRONTEND=noninteractive apt install openssh-server -y



# Install IPTables and Snort(IDS)
#sudo DEBIAN_FRONTEND=noninteractive apt install iptables snort -y
#sudo DEBIAN_FRONTEND=noninteractive apt install iptables-persistent -y

#install ufw
#sudo apt install ufw -y

# Enable Apache and MySQL services

sudo systemctl start apache2

sudo systemctl enable apache2

sudo systemctl start mysql

sudo systemctl enable mysql


echo "Installation complete"