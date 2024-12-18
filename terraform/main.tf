provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "shankar_s3" {
  bucket = "shankar-bucket-${random_id.bucket_id.hex}"
  acl    = "private"

  tags = {
    Name        = "Example S3 Bucket"
    Environment = "Dev"
  }
}

resource "random_id" "bucket_id" {
  byte_length = 4
}