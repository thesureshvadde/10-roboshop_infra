variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  type = bool
  default = true
}

variable "enable_dns_support" {
  type = bool
  default = true
}

variable "common_tags" {
  type = map
  default = {
    Project     = "Roboshop"
    Terraform   = true
    Environment = "DEV"
  }
}

variable "vpc_tags" {
  type = map
  default = {
    Name        = "Roboshop"
  }
}

variable "igw_tags" {
  type = map
  default = {
    Name = "roboshop"
  }
}

variable "public_subnet_cidr" {
  type = list
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidr" {
  type = list
  default = ["10.0.10.0/24", "10.0.11.0/24"]
}

variable "database_subnet_cidr" {
  type = list
  default = ["10.0.20.0/24", "10.0.21.0/24"]
}

variable "azs" {
  type = list
  default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_names" {
  type = list
  default = ["public-1a", "public-1b"]
}

variable "private_subnet_names" {
  type = list
  default = ["private-1a", "private-1b"]
}

variable "database_subnet_names" {
  type = list
  default = ["database-1a", "database-1b"]
}

variable "public_route_table_tags" {
  type = map
  default = {
    Name = "public"
  }
}

variable "private_route_table_tags" {
  type = map
  default = {
    Name = "private"
  }
}

variable "database_route_table_tags" {
  type = map
  default = {
    Name = "database"
  }
}