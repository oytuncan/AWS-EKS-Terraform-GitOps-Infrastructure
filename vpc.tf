module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = "eks-vpc"
  cidr = var.vpc_cidr

  # EKS için en az 2 Availability Zone (Veri Merkezi) gerekir
  azs             = ["${var.region}a", "${var.region}b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  # Worker Node'ların internete çıkması için NAT Gateway şart
  enable_nat_gateway = true
  single_nat_gateway = true # Maliyeti düşürmek için sadece 1 tane açıyoruz!
  enable_vpn_gateway = false

  # EKS'in Load Balancer oluşturabilmesi için zorunlu etiketler
  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}