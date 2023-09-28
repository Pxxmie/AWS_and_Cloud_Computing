
### Linux Commands

`pwd`  stands for print working directory. It is used to display the current directory or folder you are in within the file system. This command is useful for keeping track of your location. 

```bash
$ pwd
/c/Users/Prismika/.ssh
```

`uname` is used to print system information about the operating system.  When you run just ‘uname’ it prints the kernel name:

```bash
$ uname
Linux
```

`uname -a` provides details system information about the machine:

```bash
$ uname -a
```

`uname -p` is used to print the processor type:

```bash
$ uname -a
x86_64
```

`whoami` displays the username associated with the current active session.  This command is useful when you need to quickly confirm the username you’re currently logged in as.

```bash
$ whoami
ubuntu
```

`cat /etc/shells`  command displays the list of valid login shells. The output are all list of paths to different shell programs.  

```bash
$ cat /etc/shells
/bin/sh
/bin/bash
/usr/bin/bash
/bin/rbash
/usr/bin/rbash
/bin/dash
```

`history` command in Linux is used to display a list of previously used commands in the current session. 

You can clear your command history by running `history -c`

`ls ..` is used to list the files and directories in the parent directory (one level up) from parent directory. 

`curl "url"  —output cat.jpg`  the curl command-line tool is used to transferring data with URLs. `—output cat.jpg` flag specifies the output file name, so the downloaded image will be saved with that name, 

```bash
curl "https://vgl.ucdavis.edu/sites/g/files/dgvnsk14796/files/inline-images/Chocolate-Cinnamon-British-Shorthair-600px.jpg"  —output cat.jpg 
```

`file cat.jpg` the ‘file’ command is used to determine the type of file. When you run ‘file cat.jpg’, it will  provide information about the type of file based on its content. 

This command is useful for quickly identifying the type of file, especially when you are unclear of file extensions. 

```bash
cat.jpg: JPEG image data, JFIF standard 1.01
```

`mv` command is used to rename or move files. In the command below, the command `‘mv cat.jpg cat.txt’` is used to rename the file ‘cat.jpg’ to ‘cat.txt’

The file previously known as cat.jpg will now be renamed to cat.txt. 

```bash
mv cat.jpg cat.txt
```

`cp` command is used to copy files and directories from one location to another. Running this command makes a copy of the file ‘cat.txt’ and name the copy ‘cat.jpg’.

```bash
cp cat.txt cat.jpg
```

`rm -r`  is used to recursively remove directories and their content. This command can delete multiple files and directories. 

```bash
rm -r cat.jpg cat.txt
```

`touch` is used to create a new, empty file. Running the command below will create a new file name ‘cat.txt’ in your current directory. if successful, the command will not produce any output. 

```bash
touch cat.txt 
```

`file` is used to determine the type of file based on its content. When you run the command below ‘file cat.txt’, it will provide information about the type of file.

```bash
$ file cat.txt
cat.jpg: ASCII text
```

`cat` command  is used to display the content of text files. 

`nano` is an in built Linux **text editor** that operates directly in the terminal. For example by running ‘nano cat.txt’ it opens nano text editor and allows you to edit the file. If it is a new file, it starts with a blank page and enables you to make changes to the file. It provides a menu at the bottom with various commands for saving, exiting etc. 

To exit the editor you need to press **Ctrl + X** then it will prompt you to save the changes in which you press Y for yes and enter. Press N for no. 

`head` command is used to display the beginning lines of a file. By default, it displays the first 10 lines, but you can specify how many lines you want it to display. For example running ‘head -1 cat.txt’ will display the first line from the file. 

```bash
$ head -1 cat.txt
Hello, this is line 1. 
```

`tail` command is opposite of the ‘head’ command. It displays the last part of the file. For example running ‘tail -2 cat.txt’ will output the last two lines from the file. 

if the file ‘cat.txt’ contained: 

```bash
Hello, this is line 1. 
This is line 2.
This is line 3.
```

the output of  command ‘tail -2 cat.txt’ will be: 

```bash
This is line 2.
This is line 3.
```

`nl`  counts and displays the number of lines in the file. However, it does not count the white spaces used in the file. 

`grep` stands for global regular expression print. It is used for searching s specific text. It is useful for extracting specific information from files. 

For example the command ‘cat cat.txt | grep cat’ is used to display lines from the file ‘cat.txt’ that contain the word “cat”.

`|`  this is called a pipe operator, it takes the output from the command on the left ‘cat cat.txt’ and passes it as input to the command on the right ‘grep cat’. 

```bash
cat cat.txt | grep cat
```

`sudo apt install tree` this command displays directory in a tree like structure in the terminal. 

`cd /` - changes your current working directory to the root directory.

`sudo su`  running this command will elevate your privileges to superuser. This means you will have administrative access. 

 You can run `exit` to return back to your regular user account.

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

### Managing processes in Linux 

`ps` - this command is used to display information about active processes.

Example:
```bash
ubuntu@ip-172-31-60-44:~$ ps --help

Usage:
 ps [options]

 Try 'ps --help <simple|list|output|threads|misc|all>'
  or 'ps --help <s|l|o|t|m|a>'
 for additional help text.

For more details see ps(1).
ubuntu@ip-172-31-60-44:~$
```

`ps aux` - displays a list of all the running processes with detailed information. 

`ps -A ` -  display information about all processes running on the system.it will also show their Process IDs (PIDs).

`ps --help` - summary of usage of the ps command.

```
ubuntu@ip-172-31-60-44:~$ ps --help

Usage:
 ps [options]

 Try 'ps --help <simple|list|output|threads|misc|all>'
  or 'ps --help <s|l|o|t|m|a>'
 for additional help text.

For more details see ps(1).
ubuntu@ip-172-31-60-44:~$

```

`top` - displays a dynamic view of system processes such as CPU, memory usuage,name etc.
You can press `Shift + M` while top is running and it will sort the displayed processes by memory usage. `Shift + P` will sort it by CPU ussage. 

`sleep 5` - will instruct the system to pause or "sleep" for 5 seconds. You can press `ctrl + z` to stop. 
```
ubuntu@ip-172-31-60-44:~$ sleep 5
^Z
[1]+  Stopped                 sleep 5 

```
`sleep 5000 &` - will run the sleep command in the background, causing it to "sleep" for 5000 seconds. However the `&` tells the shell to run the command in the background, allowing you to continue using the terminal. It will also return back the PID.

```
ubuntu@ip-172-31-60-44:~$ sleep 5000 &
[2] 28918```


