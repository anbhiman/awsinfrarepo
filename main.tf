terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "3.23.0"
   }
}

}

provider "aws" {

   access_key  = "AKIAUGZKCRXREFXFVZVE"

    secret_key  = "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"

    region = "us-east-1"
   

}
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-testtre1-bucket"
  versioning {
      enabled = true
   }
}



