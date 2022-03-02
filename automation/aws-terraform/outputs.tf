output "aws_instance_public_dns" {
  value = aws_instance.instance[*].public_dns
}