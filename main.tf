terraform {
  required_version = ">= 1.8.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.68.0"
    }
  }

  backend "s3" {
    bucket = "dev-terraform-versioning"
    key    = "aws-vm-github/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      owner      = "cacaprado"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "dev-terraform-versioning"
    key    = "aws-vm-github/terraform.tfstate"
    region = "us-east-2"
  }
}