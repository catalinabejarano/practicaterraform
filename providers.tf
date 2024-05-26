terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.18.0, <5.45.0, !=5.44.0"
    }
     random = {
      source = "hashicorp/random"
      version = "3.6.1"
    }
  }
  required_version = "~>1.8.4"
}

provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.access_key
  default_tags {
    tags = var.tags
  }
}


