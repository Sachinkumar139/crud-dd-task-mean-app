module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name    = var.cluster_name
  kubernetes_version = "1.33"

  endpoint_public_access = true

  vpc_id = module.vpc.vpc_id

  subnet_ids = module.vpc.private_subnets

  enable_cluster_creator_admin_permissions = true

  eks_managed_node_groups = {
    workers = {

      instance_types = [var.node_instance_type]

      min_size     = 1
      max_size     = 3
      desired_size = 2

      subnet_ids = module.vpc.private_subnets

      capacity_type = "ON_DEMAND"
    }
  }

  tags = {
    Project     = "MEAN-App"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}