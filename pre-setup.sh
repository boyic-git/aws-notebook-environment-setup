#!/bin/bash

sudo apt-get update -y

sudo apt-get install build-essential libssl-dev libpq-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip -y

sudo apt-get install supervisor -y 

sudo apt-get install python3-pip python3-dev python3-venv -y

sudo apt-get install nano -y

sudo apt-get install git -y 

sudo apt-get install nginx curl -y

sudo apt-get install ufw -y

sudo ufw allow 'Nginx Full'

sudo ufw allow ssh

sudo python3 -m pip install jupyter

sudo service supervisor start

sudo apt autoremove -y

git clone https://github.com/boyic-git/aws-notebook-environment-setup.git

chmod +x ./aws-notebook-environment-setup/setup.sh

sudo ./aws-notebook-environment-setup/setup.sh

sudo apt-get install ec2-instance-connect
