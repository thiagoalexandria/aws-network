variable "name_subnet" {
  description = "Nome da subnet que está associado a subnet."
  type        = string
}

variable "vpc_id" {
  description = "Id da VPC."
  type        = string
}

variable "cidr_block_public" {
  description = "É um Map (mapa) de zonas de disponibilidade (AZ) para blocos das subnets, nas quais os nós das subnets serão implantados."
  default     = {}
  type        = map
}

variable "map_public_ip_on_launch_public" {
  description = "Variável para saber se a subrede deve ativar o ip público nas instâncias lançadas na subnet. Para subrede pública, por default está habilitado."
  default     = true
  type        = bool
}

variable "tags" {
  description = "Mapa (Map) de tags para os resources."
  default     = {}
  type        = map
}