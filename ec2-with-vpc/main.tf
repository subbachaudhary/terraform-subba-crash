resource "aws_instance" "my-ec2" {
  instance_type = "t2.micro"
  ami           = "ami-0cff7528ff583bf9a"
  count         = 2
}
resource "aws_vpc" "myvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
resource "aws_subnet" "mysubnet" {
  vpc_id     = "aws_vpc.myvpc.id"
  cidr_block = "10.0.1.0/24"

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
resource "aws_route_table" "myroutetable" {
  vpc_id = "aws_vpc.myvpc.id"

  route {
    cidr_block = "10.0.1.0/24"
    gateway_id = "aws_internet_gateway.gw.id"
  }
  tags = {
    Name = "myroute"
  }
}
