#Lab Provider
provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/Users/thiagoalexandria/.aws/credentials"
  profile                 = "DEVOPS"
}


terraform {
  backend "s3" {
    profile = "DEVOPS"
    bucket         = "530310733558-terraform-state-backend"
    key            = "eks/network-eks.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}