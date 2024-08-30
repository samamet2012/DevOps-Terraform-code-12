/*
resource "aws_iam_group" "grp1" {
  name = "manager"
  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_iam_user" "usr1" {
  name = "OtSam"
  depends_on = [ aws_iam_group.grp1 ]
}
*/

resource "aws_instance" "inst1" {
  ami = "ami-02c21308fed24a8ab"
  instance_type = "t2.micro"
  key_name = "wordpress-key"
  lifecycle {
    create_before_destroy = true
  }
}

