resource "helm_release" "wordpress" {
  name       = "wordpress"
  chart      = "../application"
}