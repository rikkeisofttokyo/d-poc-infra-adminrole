terraform {
  required_version = ">=0.13"
  backend "s3" {
    bucket = "d-s3-poc-terraform"
    dynamodb_table = "d-ddb-table-terraform-state-lock"
    key = "terraform.tfstate"
    region = "ap-northeast-1"
  }
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "3.72.0"
    }   
  }
}

provider "aws" {
  region = "ap-northeast-1"
}