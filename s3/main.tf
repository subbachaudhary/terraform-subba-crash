resource "aws_s3_bucket" "subba" {
  bucket = "subba-new-bucket"

  tags = {
    name        = "mybucket"
    environment = "dev"
  }
}

