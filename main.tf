module "app" {
  source    = "./module"
  namespace = "default"
  name      = "wordpress"
  wait      = false
  chart     = "./application"
  values = [<<EOF
  replicaCount: 3

image:
  repository: wordpress
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "latest"
  EOF
  ]
}

module "python" {
  source    = "./module"
  namespace = "default"
  name      = "python"
  wait      = false
  chart     = "./application"
  values = [<<EOF
  replicaCount: 3

image:
  repository: python
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "latest"
  EOF
  ]
}

module "nodejs" {
  source    = "./module"
  namespace = "default"
  name      = "nodejs"
  wait      = false
  chart     = "./application"
  values = [<<EOF
  replicaCount: 3

image:
  repository: nodejs
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "latest"
  EOF
  ]
}