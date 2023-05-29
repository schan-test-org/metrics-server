###############################################################################
# Common Variables
###############################################################################

project     = "dev.test"
aws_region  = "ap-northeast-2"

default_tags = {
  dept  = "Platform Service Architect Group / DevOps SWAT Team"
  email = "schan@mz.co.kr"
}

env = "dev"

########################################
# remote backend workspace setting
########################################
tfc_org = "TEST-ORG"
tfc_wk = "eks-dev-test"

###############################################################################
# eks
###############################################################################
eks_cluster_name       = "eks-dev-test"

###############################################################################
# helm-v
###############################################################################

helm_release_name      = "metrics-server"
helm_chart_name        = "metrics-server"
helm_chart_version     = "3.10.0"
helm_repository_url    = "https://kubernetes-sigs.github.io/metrics-server/"

create_namespace       = true
namespace              = "metrics-server"

replica_count           = 1
service_monitor_enabled = false

default_args = <<EOT
- --cert-dir=/tmp
- --kubelet-preferred-address-types=InternalIP,ExternalIP,Hostname
- --kubelet-use-node-status-port
- --metric-resolution=15s
- --kubelet-insecure-tls
EOT

resources = <<EOT
limits:
  memory: "200Mi"
requests:
  cpu: "100m"
  memory: "100Mi"
EOT

affinity = <<EOT
nodeAffinity:
  requiredDuringSchedulingIgnoredDuringExecution:
    nodeSelectorTerms:
    - matchExpressions:
      - key: role
        operator: In
        values:
        - ops
EOT

node_selector = ""
# node_selector = <<EOF
# role: ops
# EOF

# tolerations   = ""

# tolerations = <<-EOT
# - key: "role"
#   operator: "Equal"
#   value: "ops"
#   effect: "NoSchedule"
# - key: "role"
#   operator: "Equal"
#   value: "apps"
#   effect: "NoSchedule"
# EOT