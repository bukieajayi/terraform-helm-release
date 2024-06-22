# Usage
### Please add the following code 
```
module "app" {
  source    = "bukieajayi/release/helm"
  namespace = "default"
  name      = "wordpress"
  wait      = false
  chart     = "./application"
  values = []
}
```
