output "ec2_public_ip" {
  value = aws_instance.myserver.public_ip
}

output "ec2_instance_type" {
  value = aws_instance.myserver.instance_type
}