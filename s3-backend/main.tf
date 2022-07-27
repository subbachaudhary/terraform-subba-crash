terraform {
  backend "s3" {
    bucket = "subba-bucket-test"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
