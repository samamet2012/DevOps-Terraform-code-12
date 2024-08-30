
resource "aws_instance" "web" {
  ami                         = "ami-02c21308fed24a8ab"
  associate_public_ip_address = true
  availability_zone           = "us-east-1b"
  instance_type               = "t2.micro"
  ipv6_address_count          = 0
  key_name                    = "wordpress-key"
  monitoring                  = false
  security_groups             = ["launch-wizard-2"]
  subnet_id                   = "subnet-0f927b1b190f6b8a4"
  tags = {
    Name = "web-server"
  }

}
