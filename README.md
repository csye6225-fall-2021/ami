# Download Packer for Ubuntu

```
curl -fsSL https://apt.releases.hashicorp.com/gpg | 
sudo  apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install packer

```
# Run 
You can run the packer by this commnad

## Give all the required configuration and keys in the vars.json

```
packer build -var-file=vars.json ami.json
```

Once the AMI has built
Create the VPC using terraform
Launch a new instance with the above AMI and VPC

# Install MySQL Server

```
sudo apt install mysql-server
sudo mysql_secure_installation
```

SSH into the instance and run the application


```
ssh -i 'keyPath' ubuntu@IPAddress
```

Copy the webapp from local machine to instance using SCP. 

```
scp -i 'keypath' 'local-webpath' 'ubuntu@IP:/home/ubuntu'
```

# Run the web app

```
cd /home/ubuntu/webapp
npm i
npx nodemon server.js

```

# DNS Setup

After registering Domain in Namecheap

1. Open root aws account and select Route 53 and then create a public hosted zone for the domain which we created in the namecheap. 
2. In the AWS dev account create a subdomain for the above domain for ex. dev.csye6225.me and add the nameservers in the aws root account. 
3. In the AWD prod account create a subdomain for the domain for ex. prod.csyse6225.me and add the nameserves in the aws root account. 
   
# Test

## Open Postman and test the API's