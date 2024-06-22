resource "helm_release" "wordpress" {
  name  = "wordpress"
  chart = "../application"
  wait  = false
}
