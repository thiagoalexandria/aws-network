variable "tags" {
  description = "Mapa (Map) de tags para os resources."
  default = {
    Terraform = "True"
  }
  type = map(any)
}

variable "subnet_tags" {
  description = "Mapa (Map) de tags para os resources."
  default = {
    Terraform = "True"
    "kubernetes.io/cluster/EKS-CLUSTER" = "shared"
  }
  type = map(any)
}