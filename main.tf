provider "aws" {
  region = "ap-south-1"
}

# Get default VPC
data "aws_vpc" "default" {
  default = true
}

# Get subnet from default VPC
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# Create EC2 instance
resource "aws_instance" "demo" {
  ami           = "ami-05d2d839d4f73aafb"   # Amazon Linux / Ubuntu (region-specific)
  instance_type = "t3.micro"

  subnet_id = data.aws_subnets.default.ids[0]

  tags = {
    Name = "Jenkins-Terraform-Demo"
  }
}
