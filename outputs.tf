output "bucket_name" {
  description = "Name of the created storage bucket"
  value       = module.s3.bucket_name
}

output "uploaded_file_url" {
  description = "The local URL path to view your uploaded file"
  value       = module.s3.uploaded_file_url
}

output "dynamodb_name" {
  description = "Name of the table created in DynamoDB"
  value       = module.dynamodb.dynamodb_name
}

output "vpc_name" {
  description = "Display VPC ID"
  value       = module.network.vpc_name
}

output "public_subnet_name" {
  description = "Display Public Subnet"
  value       = module.network.public_subnet_name
}

output "private_subnet_name" {
  description = "Display Private Subnet"
  value       = module.network.private_subnet_name
}

output "security_group_id" {
  description = "Display security group ID"
  value       = module.security_group.security_group_id
}

output "ec2_server_id" {
  description = "The Instance ID generated for your server"
  value       = module.ec2_instance_linux.ec2_server_id
}

output "ec2_server_public_ip" {
  description = "Display ec server IP"
  value       = module.ec2_instance_linux.ec2_server_public_ip
}
