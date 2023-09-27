
### Launching EC2 Instance

To launch an EC2 instance on AWS, you will need to first login to AWS console and access the management console. 

1) Navigate to EC2 Dashboard, you can either search for EC2 in the AWS service search bar on top left or you can find it under the recently visited section.

![select ec2.png](images%2Fselect%20ec2.png)

2) Once you have clicked on EC2, you need to click on “Launch Instance” button. 

![launch_instance.png](images%2Flaunch_instance.png)

3) First, you need to enter a name or tag for your Instance, I have named mine “tech254_prismika_nginx” just for easier identification and management.

![names_tags.png](images%2Fnames_tags.png)

4) Now, you will need to choose an AMI (Amazon Machine Image). An AMI serves as a template for launching virtual servers. There are many pre-configured virtual machine image to choose from such as Amazon Linux, Ubuntu, Windows etc. 

In order to find an specific version of Ubuntu, you will need to click on “Browse more AMIs”. Form there we can use the search bar to look for version “**18.04 lts 1e9”**.  By pressing enter, it will filter down to 2 AMIs found in community. We will need to select the ****ubuntu ami-0a7493ba2bc35c1e9, as shown in the picture below. 

![browse_AMI.png](images%2Fbrowse_AMI.png)

![select_AMI.png](images%2Fselect_AMI.png)