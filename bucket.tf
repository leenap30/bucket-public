resource "aws_s3_bucket" "b1" {
  bucket = "awsbucketl4"
  acl    = "public-read-write"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_object" "b1" {

  bucket = "awsbucketl4"
  
  key    = "profile3"

  acl    = "public-read"

  source = "th.jpg"

  etag = filemd5("th.jpg")

}

