resource "aws_s3_bucket" "b1" {
  bucket = "awsbucketl3"
  acl    = "public-read"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

