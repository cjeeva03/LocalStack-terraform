output "ec2_server_id" {
  description = "The Instance ID generated for your server"
  value       = aws_instance.ec2_instance_linux.id
}

output "ec2_server_public_ip" {
  description = "Display ec server IP"
  value       = aws_instance.ec2_instance_linux.public_ip
}