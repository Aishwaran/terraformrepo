terraform {
  backend "s3" {
    bucket         = "kopsetcd"
    key            = "main"
    region         = "ap-south-1"
    dynamodb_table = "my-table"
  }
}
