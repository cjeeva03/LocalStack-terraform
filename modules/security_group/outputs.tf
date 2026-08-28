output "security_group_id" {
    description = "Display security group ID"
    value = aws_security_group.sg_ec2_instance.id
}