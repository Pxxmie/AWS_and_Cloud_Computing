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
[2] 28918
```

`kill` - this command is used to terminate processes. It requests the process to terminate. 

`kill -1 [PID]` - sends the 'hangup' signal to the process with the specified PID. Some processes may reload their configuration from this command while others may ignore it and the process will still be there. 
In this example, when I ran `kill -1 28916` the process ignored it and did not do anything.

```
ubuntu@ip-172-31-60-44:~$ kill -1 28916
ubuntu@ip-172-31-60-44:~$ ps
  PID TTY          TIME CMD
 2271 pts/1    00:00:00 bash
28916 pts/1    00:00:00 sleep
28918 pts/1    00:00:00 sleep

```

`kill -9 [PID]`- this command however '-9' signal is a forceful termination that immediately terminates a process. It is recoemmended to use '-1' first and -9 should be the last resort.

```
ubuntu@ip-172-31-60-44:~$ kill -9 28916
ubuntu@ip-172-31-60-44:~$ ps
  PID TTY          TIME CMD
 2271 pts/1    00:00:00 bash
28918 pts/1    00:00:00 sleep
28942 pts/1    00:00:00 ps
[1]+  Killed                  sleep 5
ubuntu@ip-172-31-60-44:~$
```

### Permissions 

File permission are organised in three sets, they are owner, group and others.
- Owner - the user who created the file or directory. Indicated as 'u'.
- Group - a group are users who are members of the file's groups. Indicated as 'g'.
- Others (Everyone) - all other users who are not the owner and not in the group. Indicated as 'o'.

Each of these categories can be assigned three types of permission: 
- Read (R)- allows user to view the contents of the file. 
- Write (W)- allows user to modify, make changes to the file or directory.
- Execute (X) - allows the user to execute the file if its a program or script. 

These permission are represents using three character string, such as "rwx". 
For example: 

```
ubuntu@ip-172-31-60-44:~$ ls -l
total 4
-rwxrwxr-x 1 ubuntu ubuntu 202 Sep 28 09:33 provision.sh
ubuntu@ip-172-31-60-44:~$
```
`-rwxrwxr-x `indicates that the owner has r,w and x permission. The group has r,w and x permission and everyone else has r and x permission but not w. 

#### Changing files 

###### Adding permission 

`sudo chmod +x [file]` - this command is used to execute permission to the file. `sudo` is used to run the command as super user, `chmod` command is used to change file permissions and `+x` indicates that you want to add the execute (x) permission tot he file. 

Example:

```
ubuntu@ip-172-31-60-44:~$ sudo chmod +x cat.txt
ubuntu@ip-172-31-60-44:~$ ls -l
total 8
drwxrwxr-x 2 ubuntu ubuntu 4096 Sep 28 10:38 cat.txt
-rwxrwxr-x 1 ubuntu ubuntu  202 Sep 28 09:33 provision.sh

```

###### Removing permissions 

`chmod -x [filename]`- this command is used to remove the execute (x) permission on the file. `-x` indictes that you want to remove the x permission. 

```
ubuntu@ip-172-31-60-44:~$ sudo chmod -x cat.txt
ubuntu@ip-172-31-60-44:~$ ls -l
total 8
drw-rw-r-- 2 ubuntu ubuntu 4096 Sep 28 10:38 cat.txt

```
`sudo chmod 777 [filename]` - this command using numbers sets all users owner,groups and others to have full read, write and execute permission. 

Read (r) - value 4.
Write (w) -value 2.
Execute (x) - value 1.

You can refer to the chmod calculator [https://chmod-calculator.com/] to help generate the numeric representation of file permissions based on the owner, group and others. 

### Envrionment variables 

Environment variables are the variables specific to a certain environment. For example, each user in an operating system has its own environment. An admin user has a different environment than other users do.

`printenv` - displays the current environment variables. It will output list of current variables set in your shell session. 

`printenv USER` - is used to display the value of the environment variable named USER. This variable typically stores the name of the currently logged-in user. 
Example: 

```
ubuntu@ip-172-31-60-44:~$ printenv USER
ubuntu
```
##### Exporting 

When you set an environment variable without using export, it creates a local variable that is only accessible within the current session. 

However, if we export the local variable it will be globally accessible. 
Example: 

Creating a local variable
```
ubuntu@ip-172-31-60-44:~$ MYNAME=Prismika
ubuntu@ip-172-31-60-44:~$ printenv MYNAME
```

Creatiing a environmental variable using export
```
ubuntu@ip-172-31-60-44:~$ export MY_NAME=Prismika
ubuntu@ip-172-31-60-44:~$ printenv MY_NAME
Prismika
```
then you can press printenv and it will show: 

``` 
MY_NAME=Prismika 
```