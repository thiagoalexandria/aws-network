#Modulo default para criação de VPC
resource "aws_vpc" "vpc_main" {
  cidr_block            = var.cidr_block      #Variável para saber o block da VPC.
  instance_tenancy      = var.inst_tenancy    #Variável para saber se precisa de uma infra dedicada ou não.
  enable_dns_hostnames  = var.dns_hostnames   #Variável para seber se a VPC tem ou não suporte para nome de host DNS.
  enable_dns_support    = var.dns_support     #Variável para saber se a VPC tem ou não suporte a DNS.

  
  tags                  = merge(var.tags, 
                          tomap({
                            "Name" = format("%s", var.name_vpc)
                          }))
}