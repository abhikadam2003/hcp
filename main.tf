provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-027308df79a86d22c"
  instance_type = "c7i-flex.large"

  tags = {
    Name = "simple-ec2"
  }
}
