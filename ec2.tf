resource "aws_instance" "public_instance" {
  ami                    = var.images_id
  instance_type          = var.type
  key_name               = aws_key_pair.ssh_key_pair.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  subnet_id              = aws_subnet.public_subnet.id
  user_data              = file("${path.module}/script.sh")

  tags = {
    Name = "PublicInstance"
  }
}

resource "aws_instance" "private_instance" {
  ami                    = var.images_id
  instance_type          = var.type
  key_name               = aws_key_pair.ssh_key_pair.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  subnet_id              = aws_subnet.private_subnet.id

  tags = {
    Name = "PrivateInstance"
  }
}
