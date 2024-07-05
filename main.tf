terraform {
  cloud {
    organization = "Uzake"
    workspaces {
      name = "fecp-cycle4"
    }
  }	 
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
   ami           = "ami-060e277c0d4cce553"
   instance_type = "t2.micro"

   tags = {
        Name = var.instance_name
   }
 }
