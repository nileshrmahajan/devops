module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true
  default_security_group_name = var.vpc_security_group_name

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
