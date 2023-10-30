terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAWH4PCYXSOZIYRZVU"
  secret_key = "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"
}
