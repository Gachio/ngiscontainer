terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
terraform {
  backend "remote" {
    organization = "lavenchia_environment" #terraform cloud org
    workspaces {
      name = "ngiscontainer"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
#- ami           = "ami-830c94e3" 
 ami           = "ami-08d70e59c07c61a3a" # Updates the existing ami
instance_type = "t2.nano"

  tags = {
    Name = var.instance_name
  }
}


  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
#- ami           = "ami-830c94e3" 
 ami           = "ami-08d70e59c07c61a3a" # Updates the existing ami
instance_type = "t2.nano"

  tags = {
    Name = var.instance_name
  }
}

