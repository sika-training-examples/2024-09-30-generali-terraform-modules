resource "rancher2_project" "this" {
  name       = var.name
  cluster_id = var.cluster_id
}
