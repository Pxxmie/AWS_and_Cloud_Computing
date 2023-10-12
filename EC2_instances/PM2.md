### PM2 - Process Manager

## What is PM2 and Why is it useful?

PM2 is a process manager for production Node.js application. It helps to manage and keep your Node.js application running alive in production envrionment.

 PM2 helps you understand how well your application is running and how much computer power it's using. It can also make your app work faster by running multiple copies at once.

### Uses of PM2

- PM2 allows you to easily start, stop, restart, and monitor your Node.js applications. It can manage multiple processes simultaneously.

- PM2 can be configured to automatically restart your application in case it crashes or encounters an error.

- It provides tools for managing application logs

- Provides a built-in monitoring dashboard that gives you real-time information about CPU usage, memory usage etc.

# Useful Commands

***Install node.js first***

## Installation

`sudo npm install pm2 -g`

## Create a node app

`nano app.js`

## Run the app using PM2

`pm2 start [app]` - starting an application

`pm2 list` - listing running application

`pm2 stop [app]` - stopping an application

`pm2 restart [app]` - restarting an application

`pm2 logs [app]` - viewing logs

`pm2 monit` - monitoring CPU/Memory usuage

`pm2 show [app]` - checking application status


