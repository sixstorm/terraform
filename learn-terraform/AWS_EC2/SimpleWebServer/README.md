# Simple Web Server

This Terraform configuration file will perform the following tasks:

- Create an EC2 Instance (Ubuntu, Free Tier)
- Use an existing Key Pair for SSH connectivity
- Use an existing Security Group to allow inbound SSH and HTTP (no restrictions)
- Update APT, install NGINX and enable NGINX for boot
- Output the public IP address that AWS assigns to the instance.