
data "aws_instance" "ec21" {
  instance_id = "i-0a8f3afd4cb0182c0"
}

data "aws_ami" "ami1" {
  most_recent      = true
  owners           = ["amazon"]
filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*-x86_64-ebs"]
  }
filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

