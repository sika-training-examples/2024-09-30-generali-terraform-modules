resource "rancher2_project" "this" {
  name       = var.name
  cluster_id = var.cluster_id

  resource_quota {
    project_limit {
      limits_cpu       = var.project_limit_cpu
      limits_memory    = var.project_limit_memory
      requests_storage = var.project_limit_storage
    }
    namespace_default_limit {
      limits_cpu       = var.namespace_default_limit_cpu
      limits_memory    = var.namespace_default_limit_memory
      requests_storage = var.namespace_default_limit_storage
    }
  }
}
