terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

resource "aws_instance" "webb" {
  ami           = "ami-0ff39345bd62c82a5"
  instance_type = "t3.micro"

  tags = {
    Name = "Poundoh"
  }
}
