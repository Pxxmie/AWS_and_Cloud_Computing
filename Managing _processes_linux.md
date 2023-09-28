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
`
kill -1 PID`