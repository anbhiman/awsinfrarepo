terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "3.23.0"
   }
}

}

provider "aws" {

    access_key = "AKIAUGZKCRXRJWMAROOE"

    secret_key = "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"

    region = "us-east-1"

}


resource "aws_s3_bucket" "b" {
  bucket = "my-tf-testdev-bucket"
  versioning {
      enabled = true
   }
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_athena_database" "example" {
  name   = "athena_database_dev"
  bucket = aws_s3_bucket.b.bucket

  
}
