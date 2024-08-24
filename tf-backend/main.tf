terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }
  backend "s3" {
    bucket = "demo-bucket-ba3ba4b16d069e84"
    key = "backend.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "myserver" {
  ami = "ami-066784287e358dad1"
  instance_type = "t2.micro"
  tags = {
    Name = "SampleServer"
  }
}