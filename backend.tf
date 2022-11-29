terraform {
  backend "s3" {
    bucket = "mydevv-tf-state-bucket"
    key = "terraform.state"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
