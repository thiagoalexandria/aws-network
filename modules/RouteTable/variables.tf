variable "rtb_name" {
    description = "Nome da Route table."
    type        = string
    default     = null
}

variable "vpc_id" {
    description = "VPC ID da vpc."
    type        = string
    default     = null
}

variable "tags" {
    description = "Um Map de tags para o recurso."
    default     = {}
    type        = map
}

variable "route_table_ipv4"    {
   description = "The list of routes for IPv4 'CIDR' block(s)"
   type        = map #(object({ nat = string, igw = string }))
   default     = null
}

variable "create_rtb" {
    description = "Questionamento para saber se deseja criar a route table. Por default, está habilitado (true) para criar."
    default     = true
    type        = bool
}

variable "existent_route_table_id" {
    description = "ID de uma route table existente"
    type        = string
    default     = null 
}

variable "associar_rtb_subnet" {
    description = "Questionamento para saber se deseja associar a route table criada a uma subnet. Por default, está habilitado (true) para associar"
    default     = true
    type        = bool
}

variable "subnet_id" {
    description = "Subnet ID que será associada a route table"
    type        = string 
}