terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}
module "vpc" {
  source = "./vpc"
}
module "iam" {
  source = "./iam"
}
output "iam" {
  value = module.iam
  sensitive = true
}
