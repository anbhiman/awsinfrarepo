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
resource "aws_db_instance" "default" {
  allocated_storage    = 10
  name              = "mydb29112022"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}



