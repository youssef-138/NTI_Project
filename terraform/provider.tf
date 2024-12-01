provider "aws" {
  region = "eu-west-2"
}


terraform {
  backend "s3" {
    bucket = "remote_statefile"
    key    = "eks-cluster/terraform.tfstate"
    region = "eu-west-2"
  }
}
