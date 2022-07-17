resource "aws_instance" "my-ec2" {
  instance_type = var.instance_type
  ami           = var.ami_id
  count         = var.ec2-count
}
resource "aws_vpc" "myvpc" {
  cidr_block       = var.testvpc
  instance_tenancy = "default"

  tags = {
    Name = "var.tag"
  }
}
resource "aws_subnet" "mysubnet" {
  vpc_id     = "aws_vpc.myvpc.id"
  cidr_block = var.subnet

  tags = {
    Name = "newsubnet"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = "aws_vpc.myvpc.id"

  tags = {
    Name = "mygw"
  }
}