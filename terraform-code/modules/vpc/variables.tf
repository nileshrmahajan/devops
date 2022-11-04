variable "vpc_name" {
    default = "test-vpc"   
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "vpc_azs" {
    default = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "vpc_private_subnets" {
    default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "vpc_public_subnets" {
    default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "vpc_security_group_name" {
    default = "nilesh"
}