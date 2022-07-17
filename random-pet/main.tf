
resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
resource "aws_s3_bucket" "mybucket-subba" {
  bucket = "random_password.password.id"
}