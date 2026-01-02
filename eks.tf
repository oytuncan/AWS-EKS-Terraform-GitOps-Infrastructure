module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.29" # Kubernetes versiyonu (Güncel ve stabil)

  # Cluster'ın endpoint'ine (API'sine) internetten erişebilelim (kubectl komutu için)
  cluster_endpoint_public_access = true

  # VPC Modülünden gelen ID'leri buraya bağlıyoruz
  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets # Worker Node'lar gizli ağda olacak
  control_plane_subnet_ids = module.vpc.private_subnets

  # Worker Node (İşçi Sunucular) Ayarları
  eks_managed_node_group_defaults = {
    instance_types = ["t3.small"] # Öğrenci dostu ucuz tip. (Prod ortamında t3.medium önerilir)
  }

  eks_managed_node_groups = {
    # Birinci işçi grubu
    node_group_1 = {
      min_size     = 1
      max_size     = 2 # Trafik artarsa 2 makineye çıkabilir
      desired_size = 2 # Normalde 1 makine çalışsın (Maliyet kontrolü)

      instance_types = ["t3.small"]
      capacity_type  = "ON_DEMAND" # Kesintisiz çalışsın (SPOT yaparsak AWS geri alabilir)
    }
  }

  # Cluster'ı kuran kişi (yani sen) yönetici (admin) olsun
  enable_cluster_creator_admin_permissions = true

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}