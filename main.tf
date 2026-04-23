resource "aws_instance" "demo" {
  ami           = "ami-05d2d839d4f73aafb"
  instance_type = "t2.small"

  subnet_id = "subnet-0b3d913d19707b019"

  tags = {
    Name = "Jenkins-Terraform-Demo"
  }
}
