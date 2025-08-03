terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.23.0"
    }
  }
  backend "s3" {
    bucket  = "tomcat-devops-labs-tf"
    key     = "tf-state-deploy"
    workspace_key_prefix = "tf-state-deploy-env"
    region  = "us-east-1"
    encrypt = true

  }
}
  provider "aws" {
  region  = "us-east-1"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact = var.contact
      ManagedBy = "Terraform/deploy"
    }
  }
}

locals {
    prefix = "${var.project}-${terraform.workspace}"
}

data "aws" "current" {}