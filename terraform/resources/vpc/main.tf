module "vpc" {
  source  = "registry.terraform.io/terraform-aws-modules/vpc/aws"
  version = "3.19.0"

  name = var.cluster_name
  cidr = "172.25.126.0/23"


  private_subnets = ["172.25.126.0/26", "172.25.126.64/26"]
  public_subnets  = ["172.25.126.128/26", "172.25.126.192/26"]

  azs = ["us-east-1a", "us-east-1b"]



  map_public_ip_on_launch = true
  enable_nat_gateway      = true
  single_nat_gateway      = true
  one_nat_gateway_per_az  = false


  enable_dns_hostnames = true
  enable_dns_support   = true

/*
  # https://aws.amazon.com/premiumsupport/knowledge-center/eks-vpc-subnet-discovery/
  private_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}"  = "owned"
    "karpenter.sh/discovery/${var.cluster_name}" = var.cluster_name
    "kubernetes.io/role/internal-elb"              = "1"
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb"                      = "1"
  }
  */

}
