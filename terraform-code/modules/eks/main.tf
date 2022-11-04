module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version = "17.24.0"
  cluster_version = "1.21"
  cluster_name    = var.eks_cluster_name
  vpc_id          = var.vpc_id
  subnets         = var.private_subnets

  worker_groups = [
    {
      name = "worker-group-1"
      instance_type = "t3.medium"
      asg_desired_capacity = 2
      asg_min_capacity = 1
      asg_max_size  = 3
    },
    {
      name = "worker-group-2"
      instance_type = "t3.medium"
      asg_desired_capacity = 2
      asg_min_capacity = 1
      asg_max_size  = 3
    }
  ]
}