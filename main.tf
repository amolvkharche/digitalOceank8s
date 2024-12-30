resource "digitalocean_kubernetes_cluster" "test" {
  name    = var.cluster_name
  region  = var.region
  version = var.k8s_version
  tags    = ["${var.cluster_name}"]
  node_pool {
    name       = "${var.cluster_name}-worker-pool"
    size       = var.size
    auto_scale = true
    min_nodes  = 2
    max_nodes  = 3
  }
}
resource "local_file" "kubeconfig" {
  content  = digitalocean_kubernetes_cluster.test.kube_config.0.raw_config
  filename = "${path.module}/kubeconfig"
}
