terraform {
  required_version = ">= 1.8.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.68.0"
    }
  }

  backend "s3" {
    bucket = "${var.environment}-terraform-versioning"
    key    = "aws-vm-github/terraform.tfstate"
    region = var.region
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