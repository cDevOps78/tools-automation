provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "b78-chaitu1"
    key    = "tools/state"
    region = "us-east-1"
  }
}