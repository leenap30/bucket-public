resource "aws_s3_bucket" "b1" {
  bucket = "awsbucketleena3"
  acl    = "public-read"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
