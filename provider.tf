terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "roboshop-76sr"
    key    = "eksctl"
    region = "us-east-1"
    dynamodb_table = "dynamodb"
  }
}

provider "aws" {
  region = "us-east-1"
}