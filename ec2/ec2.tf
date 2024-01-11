resource "aws_instance" "public_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name 
  vpc_security_group_ids = [aws_security_group.main.id] 
  subnet_id = aws_subnet.public_subnets[0].id 
  associate_public_ip_address = true
  tags = {
    Name = "Main Public Instance"
  }
}
resource "aws_instance" "private_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name 
  vpc_security_group_ids = [aws_security_group.main.id]
  subnet_id = aws_subnet.private_subnets[0].id 
  associate_public_ip_address = false 
  tags = {
    Name = "Main Private Instance"
  }
}
