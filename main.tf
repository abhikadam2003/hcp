provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
ami = "ami-04808bdb94be6720e"
instance_type = "t2.micro"
tags = {
Name = "hcp-server"
}
}

