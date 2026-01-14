provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-027308df79a86d22c"
  instance_type = "t3.small"

  tags = {
    Name = "simple-ec2"
  }
}
