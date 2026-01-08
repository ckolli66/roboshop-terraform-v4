resource "aws_instance" "instance" {
  ami = var.ami
  instance_type = var.type
  vpc_security_group_ids = [var.sg_id]
  tags = {
	Name = var.component_name
  }
}