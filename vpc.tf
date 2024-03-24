module "vpc" {
  source = "../09-terraform_aws_vpc-module"
  vpc_cidr = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags
  igw_tags = var.igw_tags

  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  database_subnet_cidr = var.database_subnet_cidr
  azs = var.azs
  public_subnet_names = var.public_subnet_names
  private_subnet_names = var.private_subnet_names
  database_subnet_names = var.database_subnet_names

  public_route_table_tags = var.public_route_table_tags
  private_route_table_tags = var.private_route_table_tags
  database_route_table_tags = var.database_route_table_tags
}