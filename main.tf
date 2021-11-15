#Lab Provider
provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/Users/thiagoalexandria/.aws/credentials"
  profile                 = "PESSOAL"
}
