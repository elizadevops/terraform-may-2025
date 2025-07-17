terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}
variable region {
  default = "us-east-1"
  type = string
  description = "Provide region"
}

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = file("/home/ec2-user/.ssh/id_rsa.pub")
  tags       = local.common_tags 
}



 variable key_name {
  default = "my-key"
  type = string
  description = "Provide key name"
 }