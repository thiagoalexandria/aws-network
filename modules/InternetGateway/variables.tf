variable "igw_name" {
  description = "Nome do Internet Gateway."
  type        = string
}

variable "igw_vpc_id" {
  description = "VPC ID da vpc."
  type        = string
}

variable "tags" {
    description = "Um Map de tags para o recurso."
    default     = {}
    type        = map
}