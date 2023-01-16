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

resource "aws_instance" "myec2" {
  ami           = "ami-071c33e7823c066b5"
  instance_type = "t3.micro"

  tags = {
    Name = "Poundohabas"
  }
}
