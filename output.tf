output "instance_public_ip" {
  value = [aws_instance.main.*.public_ip , aws_instance.main2.*.public_ip]
}
output "instance_private_ip" {
  value = [aws_instance.main.*.private_ip , aws_instance.main2.*.private_ip]
}

