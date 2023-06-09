terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.31.0"
    }
  }
  required_version = "~> 1.4.0"
}

provider "aws" {
  region = var.region_name
