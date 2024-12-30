variable "cluster_name" {
  type    = string
  default = "k8s-cluster"
}
variable "region" {
  type    = string
  default = "blr1"
}
variable "size" {
  type    = string
  default = "s-1vcpu-1gb"
}
variable "image" {
  type    = string
  default = "ubuntu-24-04-x64"
}
variable "do_token" {
  type      = string
  default   = ""
  sensitive = true
}
variable "k8s_version" {
  type    = string
  default = "1.29.1-do.0"
}
