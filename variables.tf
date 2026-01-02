variable "region" {
  description = "AWS Bölgesi"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS Cluster İsmi"
  default     = "gitops-cluster"
}

variable "vpc_cidr" {
  description = "VPC IP Aralığı"
  default     = "10.0.0.0/16"
}