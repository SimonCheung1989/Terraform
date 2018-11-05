variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}

# implicitly by using brackets [...]
variable "cidrs" { default = ["10.0.0.0/16", "10.1.0.0/16"] }

# explicitly
# variable "cidrs" { type = "list" }

# cidrs = [ "10.0.0.0/16", "10.1.0.0/16" ]
