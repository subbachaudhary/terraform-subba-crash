resource "aws_instance" "my-ec2" {
  instance_type = "t2.micro"
  ami           = "ami-0cff7528ff583bf9a"
}
