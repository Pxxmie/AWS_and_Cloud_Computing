#!/bin/bash

# update
sudo apt update

# upgrade
sudo apt upgrade -y

# install nginx
sudo apt install nginx -y

# restart nginx
sudo systemctl restart nginx

# enable nginx
sudo systemctl enable nginx

# install Node.js and npm
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs -y

# check Node.js version
node -v

# install pm2 globally
sudo npm install pm2 -g

# install project dependencies
npm install

# Start the Node.js application
node app.js

