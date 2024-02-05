variable "boundary_addr" {
  type    = string
  default = "https://bbbb71a5-54b8-4c6c-bdfa-41036371f745.boundary.hashicorp.cloud"
}

variable "auth_method_id" {
  type    = string
  default = "ampw_lj6I1n8BMZ"
}

variable "password_auth_method_login_name" {
  type    = string
  default = "amar"
}

variable "password_auth_method_password" {
  type    = string
  default = "password"
}

variable "aws_access" {
  type    = string
}

variable "aws_secret" {
  type    = string
}

variable "aws_region" {
  type    = string
  default = "eu-central-1"
}

# variable "private_vpc_cidr" {
#   type        = string
#   description = "The Private CIDR range to assign to the VPC"
#   default     = "10.0.0.0/16"
# }

variable "aws_vpc_cidr" {
  type        = string
  description = "The AWS Region CIDR range to assign to the VPC"
  default     = "172.31.0.0/16"
}

# variable "private_subnet_cidr" {
#   type        = string
#   description = "The Private CIDR range to assign to the Private subnet"
#   default = "value"
# }

variable "aws_subnet_cidr" {
  type        = string
  description = "The AWS Region CIDR range to assign to the Private subnet"
  default     = "172.31.32.0/24"
}

variable "availability_zone" {
  type        = string
  description = "Region within AWS to deploy the resources"
  default     = "eu-central-1a"
}

variable "vault_addr" {
  type    = string
  default = "https://vault-cluster-public-vault-8e6a7096.a35f54d1.z1.hashicorp.cloud:8200"
}

variable "vault_token" {
  type = string
}

variable "instances" {
  default = [
    "boundary-1-dev",
    # "boundary-2-dev",
    # "boundary-3-production",
    # "boundary-4-production"
  ]
}

variable "vm_tags" {
  default = [
    { "Name" : "boundary-1-dev", "service-type" : "database", "application" : "dev" },
    # { "Name" : "boundary-2-dev", "service-type" : "database", "application" : "dev" },
    # { "Name" : "boundary-3-production", "service-type" : "database", "application" : "production" },
    # { "Name" : "boundary-4-production", "service-type" : "database", "application" : "production" }
  ]
}
