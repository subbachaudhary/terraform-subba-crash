resource "aws_s3_bucket" "b-subba" {
  bucket = "my-tf-test-bucket-subba"

  tags = {
    Name        = "My bucket-subba"
    Environment = "prod"
  }
}
resource "aws_s3_bucket" "a-subba" {
  bucket   = "my-tf-test-bucket-chy"
  provider = "aws.dev"

  tags = {
    Name        = "My bucket-chy"
    Environment = "Dev"
  }
}