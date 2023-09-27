
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