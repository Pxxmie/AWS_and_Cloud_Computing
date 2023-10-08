## How to set up a Nginx reverse proxy?

1) Firstly, you need to make sure that the nginx server is either already running on your instance or you need to make sure its installed by running the following command. 

```bash
sudo apt update
sudo apt install nginx
```

2) Navigate to nginx directory 

```bash
cd /etc/nginx/sites-available/
```

3) By running `ls` it will show you the current files in the directory. In this case we can see a file named `default`

```bash
ubuntu@ip-172-31-55-198:/etc/nginx/sites-available$ ls
default
```

4) In order to make changes to the default file we need to run `sudo nano default` and this will open up the default file. We need to access the location bit of the file and enter the following details below. 

**`proxy_pass http://54.78.149.138:3000;`** this specifies that NGINX should act as a reverse proxy and forward the incoming requests to the server located at **`http://54.78.149.138:3000;`**

Example:

```bash
server_name _;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                proxy_pass http://<PUBLICDNS>:3000;
                proxy_set_header Host $host;
                proxy_set_header X-Real-IP $remote_addr;

        }
```

5) Save the default file, then go to the directory where your app is and run your nginx script. After the server is successfully live type your public IP from your instance it should now show the Sparta app without entering port 3000.

![Alt text](<images/Screenshot 2023-10-04 122130.png>)