provider "aws" {
region = "us-east-1"
access_key = " AKIAUH5AW5XTRL2LS2S2"
secret_key = " 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"
}

resource "aws_instance" "one" {
ami = " ami-02eec49345a878486"
instance_type = "t2.large"
   key_name = "yummy"
   vpc_security_group_ids = [aws_security_group.bar.id]
   availability_zone = "ap-southeast-2"
   user_data = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd 
sudo chkconfig httpd on
sudo echo "Hai All This is My Zomato-1 Web-Application Created by Terraform Infrastructute By Java Home Cloud Server-1" > /var/www/html/index.html
EOF
tags = {
Name = "Zomato-1"
}
}

resource "aws_instance" "two" {
ami = "ami-02eec49345a878486"
instance_type = "t2.large"
   key_name = "yummy"
   vpc_security_group_ids = [aws_security_group.bar.id]
   availability_zone = "ap-southeast-2"
   user_data = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo chkconfig httpd on
sudo echo "Hai All This is My Zomato-2 Web-Application Created by Terraform Infrastructute By Java Home Cloud Server-1" > /var/www/html/index.html
EOF
tags = {
Name = "Zomato-1"
}

