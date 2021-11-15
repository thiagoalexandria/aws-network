variable "nacl_name" {
    description = "Nome do Network ACL"
    type = string
}

variable "vpc_id" {
    description = "VPC ID da vpc."
    type = string
}

variable "subnet_ids" {
    description = "Subnets ID."
    type = list(string)
}

variable "nacl_rule_egress" {
    description = "Um Map para inserir as outbound rules."
    type = map(object({ protocolo = string , from_port = number, to_port = number, cidr_block = string, action = string }))
    default = {
    #Exemplo:
    #100   = { protocolo = "-1", from_port = 0, to_port = 0, cidr_block = "0.0.0.0/0", action = "allow" }
    }
}

variable "nacl_rule_ingress" {
    description = "Um Map para inserir as inbound rules."
    type = map(object({ protocolo = string , from_port = number, to_port = number, cidr_block = string, action = string }))
    default = {
    #Exemplo:
    #100   = { protocolo = "tcp", from_port = 80, to_port = 80, cidr_block = "192.168.10.0/24", action = "allow" }
    }
}

variable "tags" {
    description = "Um Map de tags para o recurso."
    default     = {}
    type        = map
}