

resource "aws_instance" "demo" {
  ami           = data.aws_ami.ami1.id
  instance_type = data.aws_instance.ec21.instance_type
  key_name      = data.aws_instance.ec21.key_name
}

