variable "name_vpc" {
    description = "Variável para receber o input referente ao nome da VPC."
    type        = string
}

variable "cidr_block" {
    description = "Variável para receber o input referente ao block do CIDR."
    type        = string
}

variable "inst_tenancy" {
    description = "Variável para saber se precisa de uma infra dedicada ou não, nesse caso, o default é para ser compartilhada."
    default     = "default"
    type        = string
}

variable "dns_hostnames" {
    description = "Se a VPC tem ou não suporte para nome de host DNS. Por default estar habilitado."
    default     = true
    type        = bool
}

variable "dns_support" {
    description = "Se a VPC tem ou não suporte a DNS. Por default estar habilitado."
    default     = true
    type        = bool
}

variable "tags" {
    description = "Um Map de tags para o recurso."
    default     = {}
    type        = map
}