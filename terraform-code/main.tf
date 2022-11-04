module "ec2" {
    source = "./modules/ec2"
}

module "vpc" {
    source = "./modules/vpc"
}

module "s3" {
    source = "./modules/s3"
}

module "eks" {
    source = "./modules/eks"
    vpc_id = module.vpc.vpc_id
    private_subnets = module.vpc.private_subnets
}

module "rds" {
    source = "./modules/rds"
  
}