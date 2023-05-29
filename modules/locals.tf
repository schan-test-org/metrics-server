locals {
  values = templatefile("${path.module}/template/metrics-server-values.tpl", {
    replicas      = var.replica_count
    service_monitor_enabled = var.service_monitor_enabled
    defaultArgs   = var.default_args

    resources     = var.resources
    affinity      = var.affinity
    node_selector = var.node_selector
    tolerations   = var.tolerations
  })
}