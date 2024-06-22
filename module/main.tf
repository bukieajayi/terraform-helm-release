resource "helm_release" "wordpress" {
  name  = "wordpress"
  chart = "../application"
  wait  = false 

  values = [<<EOF

  replicaCount: 3

image:
  repository: nginx
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "latest"

  EOF
  ]
}
