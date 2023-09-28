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