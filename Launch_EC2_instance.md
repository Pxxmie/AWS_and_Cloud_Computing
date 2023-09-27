
### Launching EC2 Instance 

To launch an EC2 instance on AWS, you will need to first log in to AWS console and access the management console. 

1) Navigate to EC2 Dashboard, you can either search for EC2 in the AWS service search bar on top left, or you can find it under the recently visited section.

![select ec2.png](images%2Fselect%20ec2.png)

2) Once you have clicked on EC2, you need to click on “Launch Instance” button. 

![launch_instance.png](images%2Flaunch_instance.png)

##### Name and tags
3) First, you need to enter a name or tag for your Instance, I have named mine “tech254_prismika_nginx” just for easier identification and management.

![names_tags.png](images%2Fnames_tags.png)

##### Application and OS Images (Amazon Machine Image)

4) Now, you will need to choose an AMI (Amazon Machine Image). An AMI serves as a template for launching virtual servers. There are many pre-configured virtual machine image to choose from such as Amazon Linux, Ubuntu, Windows etc. In order to find a specific version of Ubuntu, you will need to click on “Browse more AMIs”. Form there we can use the search bar to look for version “**18.04 lts 1e9”**.  By pressing enter, it will filter down to 2 AMIs found in community. We will need to select the **ubuntu ami-0a7493ba2bc35c1e9**, as shown in the picture below. 

![browse_AMI.png](images%2Fbrowse_AMI.png)

![select_AMI.png](images%2Fselect_AMI.png)

After you have selected your AMI, it should take you back on the AMI main screen with the selected AMI shown as below. 

![AMI_overview.png](images%2FAMI_overview.png)

##### Instance Type 
5) Here, you will be choosing an Instance type based on your needs and requirements. An instance type refers to a specific configuration of CPU, storage, memory and network capacity for our EC2 virtual machine. Each instance type is designed to meet different cases. 
I have selected a "t2.micro" as this instance type is commonly used for tasks like running small databases, lightweight web servers etc. 
**1vCPU** stands for 1 virtual Central Processing Unit,this represents a share of the server's physical CPU resources. 

![instancetype.png](images%2Finstancetype.png)

##### Network settings
6) On the network setting, you can set various configuration. You will need to firstly click on edit as shown,then you will be able to make some changes. You must either create a security group or select existing security group. Here I have created a new security name and called it "tech254_prismika_basesg", the description is optional. 

![networksetting_edit.png](images%2Fnetworksetting_edit.png)

![networksetting_name.png](images%2Fnetworkingsetting_name.png)

- After a security group has been created, I have added two more security group rule;for type I have selected HTTP (port 80) and HTTPS (port 443) rule from the dropdown menu and set it to 'anywhere' for 'Source' for both. A security group rule defines the type of inbound or outbound traffic that is allowed to or from instances. For example, if you want to allow incoming HTTP traffic to a web sever, you would create an inbound rule for HTTP as I have done.

![security-group_rule.png](images%2Fsecuritygroup_rule.png)

##### Key pair (login)
8) A key pair refers to a set of keys used to securely authenticate with an AWS EC2 instance. It consists of private and public key. The public key is used by AWS to encrypt data and is linked to your account whereas the private key should be kept secret and stored privately and safely. The private key is what you use to securely connect to your EC2 instance. Here, I have chosen a key pair 'tech254' and I have stored the private key safely. 

![keypair.png](images%2Fkeypair.png)

9) Once, you have checked the summary of your instance,click the "Launch Instances" button.

10) You'll be taken back to the EC2 dashboard. You can view the status of your instance. It will take a few moments for the instance to initialise. You can click on your instance and can see your instance summary.
![instance_summary.png](images%2Finstance_summary.png)

### Deploying nginx webserver 

11) Once your instance is running, you will need to connect it using SSH. You will use your private key from your key pair to connect. First, you need to go into your instance summary and click connect. Here you will find some information and commands on how to connect from your bash terminal. 

![connect.png](images%2Fconnect.png)

![connect_to_Instance_info.png](images%2Fconnect_to_Instance_info.png)

##### Open Git bash 

12) After opening git bash, you need to first make sure you are in the folder where your private key is located. 

![running_command.png](images%2Frunning_command.png)

13) Next, I have run the `chmod 400` command and this is used to change the permission of a file or directory. This ensures that private key files are kept secure and not accessible by unauthorised users. 
- Then I have run `ssh -i ` command to allow me to SSH into my EC2 instance, `-i` in this command stands for identity file. You need to make sure you are in the right directory of where your private key is located in order to run this command. After ssh -i you then need to enter the path of your private key followed by EC2 instances public IP address as shown below. 

![connect_instance_public_DNS.png](images%2Fconnect_instance_public_DNS.png)

##### Updating package repository 

14) You need now run ` sudo apt update` command which displays all available packages and their versions of your system. 
- `sudo` - allows you to run the package as superuser.
- `apt` - this is the package manager. 
- `update` - subcommand that tells apt to update the package lists.

![sudoaptupdate.png](images%2Fsudoaptupdate.png)

15) Followed by running `sudo apt upgrade -y` command which will then automatically upgrade all installed packages to their latest versions.
- `upgrade` - this is a subcommand to upgrade installed packages.

![sudo_upgrade.png](images%2Fsudo_upgrade.png)

16) Now you will need to install the Nginx web server on your ubuntu system. You can do this by running `sudo apt install nginx -y` command. `-y` command automatically answers yes confirming any prompts during installation process. 
- `install` - subcommand used to install packages. 
- `nginx` - name of the package / web sever we want to install.

![sudo_apt_install.png](images%2Fsudo_apt_install.png)

##### Starting nginx webserver

17) Finally, you will need to run `sudo systemctl start nginx` command in order to start the Nginx web server on your system. After running this command, Nginx should be running. I have also run `sudo systemctl status nginx ` in order to check the status. 

![sudo_systemctl_start.png](images%2Fsudo_systemctl_start.png)

18) You can find your public address in your EC2 instance summary and connect to your Nginx web server using the IP address as I have done below. 

![public_ipv4_instance summary.png](images%2Fpublic_ipv4_instancesummary.png)![nginx_webserver.png](images%2Fnginx_webserver.png)