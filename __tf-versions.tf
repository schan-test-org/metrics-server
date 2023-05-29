############################################
# version of terraform and providers
############################################

terraform {
  cloud {
    organization = "TEST-ORG"

    workspaces {}
  }
}


# terraform {
#   required_version = ">= 1.2.0, < 2.0.0"

#   required_providers {
#     aws = "~> 4.4.0"
#   }

#   backend "s3" {}
# }

############################################
# AWS Provider Configuration
############################################
provider "aws" {
  region  = var.aws_region
  # profile = var.aws_profile

}

provider "helm" {
	kubernetes {
		cluster_ca_certificate = base64decode(var.eks_cluster_certificate_authority_data)
		host                   = var.eks_endpoint_url
		token									 = var.eks_auth_token
	}
}