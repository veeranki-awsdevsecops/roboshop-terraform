terraform {
  backend "s3" {
    bucket = "terraform-b2025"
    key    = "tools/terraform.tfstate"
    region = "us-east-1"
  }
}