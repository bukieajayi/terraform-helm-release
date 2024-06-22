resource "helm_release" "app" {
  name  = var.name
  chart = var.chart
  wait  = var.wait
  values = var.values
}
