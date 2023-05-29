############################# main : var #######################################

variable "env" { type = string }
variable "aws_region" { type = string }
variable "project" { type = string }
variable "default_tags" { type = map(string) }

############################# bknd & vpc & network about : var #######################################
variable "tfc_org" { default = "" }
variable "tfc_wk" { default = "" }

######################################################
# variable "common_tags" {
#   type        = map(any)
#   default     = {}
#   description = "chart version for ebs csi controller"
# }

# variable "backend_s3_bucket_name" {
#   default     = ""
#   description = "s3 bucket name for terraform backend"
# }

# variable "eks_s3_key" {

#   default     = ""
#   description = "s3 key path/key for eks"
# }

variable "eks_cluster_name" {
  type        = string
  default     = ""
  description = "eks cluster name"
}

variable "eks_endpoint_url" {
  type        = string
  default     = ""
  description = "eks endpoint url"
}

variable "eks_cluster_certificate_authority_data" {
  type        = string
  default     = ""
  description = "eks cluster ca certificate"
}

variable "eks_oidc_provider_arn" {
  type        = string
  default     = ""
  description = "openid connect provider arn"
}

variable "eks_oidc_provider_url" {
  type        = string
  default     = ""
  description = "openid connect provider url"
}

variable "helm_release_name" {
  type        = string
  default     = ""
  description = "helm release name"
}

variable "helm_chart_name" {
  type        = string
  default     = ""
  description = "helm chart name"
}

variable "helm_chart_version" {
  type        = string
  default     = ""
  description = "helm chart version"
}

variable "helm_repository_url" {
  type        = string
  default     = ""
  description = "helm chart repository url"
}
############
variable "create_namespace" {
  type        = bool
  default     = true
  description = "create the namespace if it does not yet exist"
}

variable "metrics_resolution" {
  type        = string
  default     = "15s"
  description = "metrics collection period"
}

variable "namespace" {
  type        = string
  default     = "kube-system"
  description = "namespace to install"
}

variable "replica_count" {
  type        = number
  default     = 1
  description = "ingress class name"
}

variable "service_monitor_enabled" {
  type    = bool
  default = false
  description = "configure whether to create service monitor"
}

variable "default_args" {
  type        = string
  default     = ""
  description = "container's parameters"
}

variable "resources" {
  type    = string
  default = ""
}

variable "affinity" {
  type    = string
  default = ""
}

variable "tolerations" {
  type    = string
  default = ""
}

variable "node_selector" {
  type    = string
  default = ""
}
