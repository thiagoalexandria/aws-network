variable "tags" {
  description = "Mapa (Map) de tags para os resources."
  default = {
    Terraform = "True"
  }
  type = map(any)
}