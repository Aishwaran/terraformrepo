terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "web" {
  ami = "ami-0c2af51e265bd5e0e" # Amazon Linux
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-2"
