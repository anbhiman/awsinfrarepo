terraform {
  backend "s3" {
    bucket = "mydevv-tf-state-bucket"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}
