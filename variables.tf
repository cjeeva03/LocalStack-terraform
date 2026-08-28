variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "The target AWS region for local deployment"
}

variable "aws_access_key" {
  type        = string
  default     = "mock_access_key"
  description = "Dummy access key for LocalStack validation"
}

variable "aws_secret_key" {
  type        = string
  default     = "mock_secret_key"
  description = "Dummy secret key for LocalStack validation"
}

variable "environment" {
  type        = string
  default     = "LocalSandbox"
  description = "Deployment environment name tag"
}

variable "author" {
  type        = string
  default     = "Jeeva"
  description = "Author who created this resource"
}

variable "s3_object_key" {
  type        = string
  default     = "uploaded-secrets/message.txt"
  description = "The target path and filename inside the S3 bucket"
}

variable "vpc_cidr" {
  type        = string
  description = "Assign CIDR range for VPC"
}

variable "environment_vpc" {
  type        = string
  description = "Environment tag name for VPC"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "instance_ami" {
  type        = string
  description = "EC2 insatnce AMI image name"
}
