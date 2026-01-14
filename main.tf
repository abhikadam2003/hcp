provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-02b8269d5e85954ef"
  instance_type = "c7i-flex.large"

  tags = {
    Name = "simple-ec2"
  }
}
