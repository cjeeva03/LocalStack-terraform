module "dynamodb" {
  source = "./modules/database"

  environment = var.environment
  author      = var.author
}

module "s3" {
  source = "./modules/storage"

  environment   = var.environment
  author        = var.author
  s3_object_key = var.s3_object_key
}

module "network" {
  source = "./modules/vpc"

  vpc_cidr        = var.vpc_cidr
  environment_vpc = var.environment_vpc
  author          = var.author
}

module "security_group" {
  source = "./modules/security_group"

  vpc_id      = module.network.vpc_name
  environment = var.environment
  author      = var.author
}

module "ec2_instance_linux" {
  source = "./modules/ec2_instance"

  public_subnet_name = module.network.public_subnet_name
  instance_type      = var.instance_type
  instance_ami       = var.instance_ami
  security_group_id  = module.security_group.security_group_id
  author             = var.author
  environment        = var.environment
}