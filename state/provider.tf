terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }
  backend "s3" {
    bucket = "bittu-remote-state"
    key    = "remote-state-practice"
    region = "us-east-1"
    # encrypt = true
    # use_lockfile = true
    dynamodb_table = "bittu-remote-state"
  }
}

provider "aws" {
  # Configuration options
}

