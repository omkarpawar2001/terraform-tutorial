terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }
}

resource "aws_instance" "myserver" {
  ami = "ami-066784287e358dad1"
  instance_type = var.instance_type
  tags = {
    Name = "SampleServer"
  }
}