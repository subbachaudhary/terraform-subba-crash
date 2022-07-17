variable "testvpc" {
  default = "10.0.0.0/16"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "ami_id" {
  default = "ami-0cff7528ff583bf9a"
}
variable "subnet" {
  default = "10.0.1.0/24"
}
variable "tag" {
  default = "dev"
}
variable "ec2-count" {
  default = 2
}




