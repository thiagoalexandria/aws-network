#Criar o Network ACL com Dynamic block para inserir várias entradas no egress e ingress.
resource "aws_network_acl" "main_nacl" {
    vpc_id      = var.vpc_id                            #Vpc ID que o Network ACL será associado.
    subnet_ids  = var.subnet_ids                        #Subnets IDs que o Network ACL será associado.

    dynamic "egress" {
        for_each = var.nacl_rule_egress
        content {
            protocol    = egress.value["protocolo"]     #Protocolo
            rule_no     = egress.key                    #Rule Number - Número da regra
            action      = egress.value["action"]        #Allow/Deny
            cidr_block  = egress.value["cidr_block"]    #CIDR Block
            from_port   = egress.value["from_port"]     #Porta de origem
            to_port     = egress.value["to_port"]       #Porta de destino
        }
    }

    dynamic "ingress" {
        for_each = var.nacl_rule_ingress
        content {
            protocol    = ingress.value["protocolo"]    #Protocolo
            rule_no     = ingress.key                   #Rule Number - Número da regra
            action      = ingress.value["action"]       #Allow/Deny
            cidr_block  = ingress.value["cidr_block"]   #CIDR Block
            from_port   = ingress.value["from_port"]    #Porta de origem
            to_port     = ingress.value["to_port"]      #Porta de destino
        }
    }

    
    tags    =   merge(var.tags, 
                tomap({
                    "Name" = format("%s", var.nacl_name)
                }))
}