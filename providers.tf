terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta2"
    }
  }
  backend "s3" {
    bucket     = "rockeatseat-terraform-state-bucket"
    region     = "us-east-2"
    key        = "terraform.tfstate"
    encrypt = true
    profile = "Administrador"
    
  }

}
provider "aws" {
  profile = "Administrador"
  region  = "us-east-2"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.state_bucket_name
  lifecycle {
    prevent_destroy = true
    
  }

}
 resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.bucket
  versioning_configuration {
    status = "Enabled"
  }
  depends_on = [aws_s3_bucket.terraform_state]
 }