terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    
  }
  backend "s3" {
    bucket = "tomcat-devops-labs-tf"
    key = "state.tfstate"
    region = "us-east-1"
}
}


provider "aws" {
    region = "us-east-1"
 
}

