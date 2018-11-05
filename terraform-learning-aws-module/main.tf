provider "aws" {
  access_key = "AWS ACCESS KEY"
  secret_key = "AWS SECRET KEY"
  region     = "us-east-1"
}

# module "consul" {
#   source = "hashicorp/consul/aws"

#   num_servers = "3"
# }

terraform {
  backend "consul" {
    address = "demo.consul.io"
    path    = "getting-started-20181001"
    lock    = false
    scheme  = "https"
  }
}