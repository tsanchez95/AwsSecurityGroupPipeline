terraform {
  # tf version required
  required_version = "~> 0.15.5"
  backend "s3" {
    bucket         = "ADDBUCKETNAME"
    key            = "KEYPATHHERE"
    region         = "us-east-1"
    dynamodb_table = "aws-lock-azuredevops"
    encrypt        = true
  }
}
