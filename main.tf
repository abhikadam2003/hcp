provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  count = 4
  ami           = "ami-02b8269d5e85954ef"
  instance_type = "c7i-flex.large"
  key_name = "keyy"
  vpc_security_group_ids = ["sg-0f4d276f8d5e946c5"]
  tags = {
    Name = var.instance_names[count.index]
  }
}
   

  variable = "instance_names" {
    default = ["jenkins","App-server-1","App-server-2","monituring"]
  }

