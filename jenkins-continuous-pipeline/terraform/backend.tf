terraform {
  backend "s3" {
    bucket = "abiola-app"
    region = "us-east-1"
    key = "Mini-key/terraform.tfstate"
  }
}