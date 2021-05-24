resource "aws_s3_bucket" "b1" {
  bucket = "awsbucketleena3"
  acl    = "public-read-write"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_object" "b1" {

  bucket = "awsbucketleena3"
  
  key    = "profile3"

  acl    = "public-read"

  source = "index.html"

  etag = filemd5("index.html")

}

