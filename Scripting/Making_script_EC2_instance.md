### Making a script for EC2 Instances 

I have created a bash script to in order to deploy nginx webserver package. Below are the steps I have followed in order to create this script.

1) On my git bash terminal I have run ``` nano provision.sh  ``` command in order to open the nano text editor with a blank file named 'provision.sh'.

2) On the first line of my blank file, I have typed `#!/bin/bash` which is known as the shebang line. This line indicates that the script should be executed using bash shell. 

3) After, I have typed the script that performs the following tasks: 

```
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
```
4) Finally, in order to save my script I clicked ctrl + x to exit and pressed 'y' for yes to save. Then press entered for the prompt to name the file. 

5) In order to make my script executable, I ran the following command. 

```
sudo chmod +x provision.sh
``` 

This means that I can now run my script. 
To trigger and execute my script, I used the following command: 

```
./provision.sh 
```

### Creating a script to deploy the app

1) `ubuntu@ip-172-31-49-67:~$ nano provision_2.sh` in order to create a blank new sh file so our script can be written on.

2) Added the following script below the nginx web server script. 
```
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

```
3) Now, after saving the script - I have checking if the script has been created as well as granting permission for it to execute. 

```
ubuntu@ip-172-31-49-67:~$ ls
provision_2.sh
ubuntu@ip-172-31-49-67:~$ sudo chmod +x provision_2.sh
ubuntu@ip-172-31-49-67:~$ ls
provision_2.sh

```

4) Make sure before you run the script, that your app has been transfered to your EC2 instance. Also make sure your new script is moved over to your app folder on where you would like the app deployment script to run. 

###### Troubleshooting- moving new script to app folder in order to run the script.

```
*** System restart required ***
Last login: Fri Sep 29 08:51:24 2023 from 188.213.138.195
ubuntu@ip-172-31-49-67:~$ ls
app  provision_2.sh
ubuntu@ip-172-31-49-67:~$ cd app
ubuntu@ip-172-31-49-67:~/app$ cd app
ubuntu@ip-172-31-49-67:~/app/app$ ./provision_2.sh
-bash: ./provision_2.sh: No such file or directory
ubuntu@ip-172-31-49-67:~/app/app$ mv provision_2.sh app
mv: cannot stat 'provision_2.sh': No such file or directory
ubuntu@ip-172-31-49-67:~/app/app$ ls
README.md  app.js  models  node_modules  package-lock.json  package.json  provsion.sh  public  seeds  test  views
ubuntu@ip-172-31-49-67:~/app/app$ cd
ubuntu@ip-172-31-49-67:~$ mv provision_2.sh app
ubuntu@ip-172-31-49-67:~$ ls
app
ubuntu@ip-172-31-49-67:~$ cd app
ubuntu@ip-172-31-49-67:~/app$ cd app
ubuntu@ip-172-31-49-67:~/app/app$ ls
README.md  app.js  models  node_modules  package-lock.json  package.json  provsion.sh  public  seeds  test  views
ubuntu@ip-172-31-49-67:~/app/app$ ls
README.md  app.js  models  node_modules  package-lock.json  package.json  provsion.sh  public  seeds  test  views
ubuntu@ip-172-31-49-67:~/app/app$ nano provision.sh
ubuntu@ip-172-31-49-67:~/app/app$ cd
ubuntu@ip-172-31-49-67:~$ cd app
ubuntu@ip-172-31-49-67:~/app$ ls
app  provision_2.sh
ubuntu@ip-172-31-49-67:~/app$ mv provision_2.sh app
ubuntu@ip-172-31-49-67:~/app$ ls
app
ubuntu@ip-172-31-49-67:~/app$ cd app
ubuntu@ip-172-31-49-67:~/app/app$ ls
README.md  app.js  models  node_modules  package-lock.json  package.json  provision_2.sh  provsion.sh  public  seeds  test  views
ubuntu@ip-172-31-49-67:~/app/app$ ./provision_2.sh



``` 