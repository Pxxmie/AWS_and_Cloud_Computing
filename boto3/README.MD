# s3 Bucket using awscli

#### CRUD - CREAT, READ, UPDATE, DELETE 

1) Launch EC2 instance - select 18.04 lts 1e9 AMI - select existing security group.

2)  Connect to your instance through gitbash terminal, followed by running the following commands:

` sudo apt update` - gets latest information about available packaages.

`sudo apt upgrade -y` - upgrades the installed packages to their latest version. 

`sudo apt install python -y ` - installs python on the linux system. 

`sudo apt install python-pip -y`-  install the Python package manager called pip.

`sudo pip install awscli` -  installs the AWS CLI using Python 3's pip3 package manager.


### Setting environment variables

The aws configure command is used to set up your AWS CLI (Command Line Interface) with the necessary credentials and configuration details.

3) Run `aws configure` then enter the following details: 

- AWS access key ID
- AWS secret access key
- Default region name - eu-west-1
- default output format - json

7) `aws s3 ls` - used with the AWS CLI to list the contents of an S3 bucket. 

8) `aws s3 mb s3://tech254-prismika-bucket —region eu-west-1` -  to create an S3 bucket named tech254-prismika-bucket in the eu-west-1 (Ireland) region using the AWS CLI.

Example:

```
ubuntu@ip-172-31-49-105:~$ aws s3 mb s3://tech254-prismika-bucket --region eu-west-1
make_bucket: tech254-prismika-bucket
ubuntu@ip-172-31-49-105:~$
```

#### Creating a text file to upload to the bucket

9) `sudo nano example.txt` - This command opens the text editor nano with the file example.txt for editing. 

```
ubuntu@ip-172-31-49-105:~$ sudo nano example.txt
ubuntu@ip-172-31-49-105:~$ ls

```
#### Uploading the text file

10) Uploading and copying the local file to the bucket.

`aws s3 cp example.txt s3://tech254-prismika-bucket` - to copy the local file example.txt to the S3 bucket named tech254-prismika-bucket

`upload: ./example.txt to s3://tech254-prismika-bucket/example.txt` - confirms that the file example.txt was successfully uploaded to the S3 bucket tech254-prismika-bucket.

#### Read

11) `aws s3 sync s3://tech254-prismika-bucket s3_downloads` - command synchronises the contents of the S3 bucket tech254-prismika-bucket with a local directory named s3_downloads.

```
ubuntu@ip-172-31-49-105:~$ aws s3 sync s3://tech254-prismika-bucket s3_downloads
download: s3://tech254-prismika-bucket/example.txt to s3_downloads/example.txt
ubuntu@ip-172-31-49-105:~$ ls
example.txt  s3_downloads
ubuntu@ip-172-31-49-105:~$ cd s3_downloads
ubuntu@ip-172-31-49-105:~/s3_downloads$ ls
example.txt
```

#### Deleting the bucket

12) `aws s3 rm s3://tech254-prismika-bucket/example.txt `- 
 This command deletes the file example.txt from the S3 bucket named tech254-prismika-bucket

```
ubuntu@ip-172-31-49-105:~/s3_downloads$ cd
ubuntu@ip-172-31-49-105:~$ aws s3 rm s3://tech254-prismika-bucket/example.txt
delete: s3://tech254-prismika-bucket/example.txt
```

13) remove bucket

```
ubuntu@ip-172-31-49-105:~$ aws s3 rb s3://tech254-prismika-bucket
remove_bucket: tech254-prismika-bucket

```