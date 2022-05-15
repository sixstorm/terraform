resource "aws_instance" "server" {
  ami                    = "ami-09d56f8956ab235b3"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [data.aws_security_group.secgroup.id]
  subnet_id              = data.aws_subnet.ec2_vpc_subnet.id
  key_name               = data.aws_key_pair.webKP.key_name
  tags = {
    Name = "TestWebServer2"
  }

  user_data = <<-EOF
        #!/bin/bash
        sudo apt update
        sudo apt install nginx -y
        systemctl enable nginx
        systemctl start nginx
        echo "NGINX!" > ~/doc.txt


    EOF
}

# Get existing Security Group to allow SSH/HTTP
data "aws_security_group" "secgroup" {
  id = "sg-03a32b15f2c08e7d7"
}

# Output Sec Group Info
output "secgroupoutput" {
  value = data.aws_security_group.secgroup
}

# Get existing VPC subnet
data "aws_subnet" "ec2_vpc_subnet" {
  vpc_id            = "vpc-0e510a7cfc59d06a7"
  cidr_block        = "172.31.0.0/20"
  availability_zone = "us-east-1c"
}

# Use existing key pair
data "aws_key_pair" "webKP" {
  key_name = "TestKP1"
}

# Output Key Pair Information
output "aws_key" {
  value = data.aws_key_pair.webKP
}

# Output public IP
output "publicip" {
  value = aws_instance.server.public_ip
}