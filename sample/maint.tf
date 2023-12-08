module "sample" {
  source  = "app.terraform.io/alfespa17/sample/google"
  version = "0.4.0"
  time= "5s"
}


# terraform {
#  cloud {
#    organization = "simple"
#    hostname = "8080-azbuilder-terrakube-lgd86vpndpf.ws-us106.gitpod.io"
#    workspaces {
#      name = "samplecloud"
#    }
#  }
# }
