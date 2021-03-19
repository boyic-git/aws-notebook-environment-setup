#!/bin/bash

sudo apt-get update -y

sudo apt-get install build-essential libssl-dev libpq-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip -y

sudo apt-get install supervisor -y 

sudo apt-get install git -y 

sudo apt-get install nginx curl -y

sudo apt-get install ufw -y

sudo ufw allow 'Nginx Full'

sudo ufw allow ssh

sudo service supervisor start

sudo apt autoremove -y
