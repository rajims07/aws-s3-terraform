#s3 bucket creation for terraform backend

resource "aws_s3_bucket" "terra-backend-s3bucket" {
  bucket = "terra-backend-s3bucket"

  tags = {
    Name        = "terra-backend-s3bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "s3-acl" {
  bucket = aws_s3_bucket.terra-backend-s3bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "s3-versioning" {
  bucket = aws_s3_bucket.terra-backend-s3bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}



