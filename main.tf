terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.19"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-southeast-1"
}

 resource "aws_instance" "app_server" {
   ami           = "ami-0123c9b6bfb7eb962"
   instance_type = "t2.micro"

   tags = {
        Name = var.instance_name
   }
 }
