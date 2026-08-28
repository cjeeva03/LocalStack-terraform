resource "aws_instance" "ec2_instance_linux" {
  ami = var.instance_ami
  instance_type = var.instance_type

  subnet_id = var.public_subnet_name

  vpc_security_group_ids = [var.security_group_id]

  tags = {
    author = var.author
    Environment = var.environment
  }
}
