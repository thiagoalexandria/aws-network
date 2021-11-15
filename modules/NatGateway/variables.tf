variable "subnet_id" {
  description = "Subnet ID da subrede que será associado ao NAT Gateway."
  type        = string
}

variable "nat_gw_name" {
  description = "Variável para definir o nome do NAT Gateway."
  type        = string
}

variable "tags" {
    description = "Um Map de tags para o recurso."
    default     = {}
    type        = map
}