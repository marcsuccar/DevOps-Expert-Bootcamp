terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "CHANGE_ME-tf-state"
    key    = "bootcamp/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "CHANGE_ME-tf-locks"
    encrypt = true
  }
}

provider "aws" {
  region = var.region
}

module "network" {
  source = "../modules/network"
  name   = var.project
  cidr   = "10.0.0.0/16"
}
