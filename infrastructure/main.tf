terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "xczimi-terraform-state"
    key            = "dotcom/infrastructure/terraform.tfstate"
    region         = "ca-central-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      "xczimi:project" = "dotcom"
    }
  }
}

provider "aws" {
  alias   = "us_east_1"
  region  = "us-east-1"
}

locals {
  domain_name = var.domain_name
}
