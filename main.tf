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
    profile = "my-profile"
   
  }
}

provider "aws" {

   aws_access_key_id = "AKIAUGZKCRXRBWOPSHP2"

    aws_secret_access_key = "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"

    region = "us-east-1"
    profile = "my-profile"

}
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-testtre-bucket"
  versioning {
      enabled = true
   }
}



