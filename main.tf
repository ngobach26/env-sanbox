terraform {
  backend "s3" {
    bucket  = "teraform-state-mur" # đảm bảo bucket này đã tồn tại
    key     = "teraform/backend"   # đường dẫn file state trong bucket
    region  = "us-east-1"           # phải trùng region của bucket
    encrypt = true                  # khuyến nghị: mã hóa state
  }
}

locals {
  env_name         = "sandbox"
  aws_region       = "us-east-1"
  k8s_cluster_name = "ms-cluster"
}
