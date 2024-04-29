resource "digitalocean_kubernetes_cluster" "amolk-k8s" {
  name    = var.cluster_name
  region  = var.region
  version = var.k8s_version
  tags = ["amolk"]
  node_pool {
    name       = "amolk-node-pool"
    size       = "s-4vcpu-8gb"
    auto_scale = true
    min_nodes  = 2
    max_nodes  = 3
  }
}

resource "local_file" "kubeconfig" {
  content  = digitalocean_kubernetes_cluster.amolk-k8s.kube_config.0.raw_config
  filename = "${path.module}/kubeconfig"
  
}
