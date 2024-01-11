output "public_machine" {
  value = {
    "public_ip" = aws_instance.public_instance.public_ip,
    "public_dns" = aws_instance.public_instance.public_dns,
    "private_ip" = aws_instance.public_instance.private_ip,
  } 
}
output "private_machine" {
  value = {
    "private_ip" = aws_instance.private_instance.private_ip,
  } 
}
