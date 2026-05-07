provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-b2025"
    key    = "tools/terraform.tfstate"
    region = "us-east-1"

  }
}

 provider "vault" {
   address = "http://vault-internal.veerankitek.online:8200"
   token   = var.token
 }