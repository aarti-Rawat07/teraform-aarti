variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t2.small"
}

variable "ami_id" {
  description = "Ubuntu-linux"
  default     = "ami-05d2d839d4f73aafb"
}
