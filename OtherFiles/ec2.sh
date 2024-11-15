#!/bin/bash
sudo apt update
# Install the AWS CLI 
sudo snap install aws-cli --classic

# Download the script from S3

sudo aws s3 cp s3://nv3bucket/installation.sh /home/ubuntu/installation.sh

sudo aws s3 cp s3://nv3bucket/gitrepo.sh /home/ubuntu/gitrepo.sh

sudo aws s3 cp s3://nv3bucket/implementation.sh /home/ubuntu/implementation.sh

sudo aws s3 cp s3://nv3bucket/mysql.sh /home/ubuntu/mysql.sh

# Make the script executable
chmod +x /home/ubuntu/installation.sh
chmod +x /home/ubuntu/gitrepo.sh
#chmod +x /home/ubuntu/implementation.sh
chmod +x /home/ubuntu/mysql.sh


# Run the script
/home/ubuntu/installation.sh
/home/ubuntu/gitrepo.sh
#/home/ubuntu/implementation.sh
/home/ubuntu/mysql.sh