terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "3.23.0"
   }
}
backend "s3" {
    bucket = "mydev-tf-state-bucket"
    key = "terraform.tfstate"
    region = "us-east-1"
   
  }
}

provider "aws" {

    access_key = "AKIAUGZKCRXRBWOPSHP2"

    secret_key = "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"

    region = "us-east-1"

}
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-testtre-bucket"
  versioning {
      enabled = true
   }
}



