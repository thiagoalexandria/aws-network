#Modulo default para criação de Subnet Privada
resource "aws_subnet" "private_subnet" {
    count                   = length(var.cidr_block_private)                        #Variável para saber a quantidade de subrede que será criada.
    vpc_id                  = var.vpc_id                                            #Variável para saber o ID da VPC.
    cidr_block              = element(values(var.cidr_block_private), count.index)  #Block cidr da subnet privada e armazena como "value" no map.
    availability_zone       = element(keys(var.cidr_block_private), count.index)    #AZ que a subnet vai pertencer e armazena como "key" no map.
    map_public_ip_on_launch = var.map_public_ip_on_launch_private                   #Variável para saber se a subrede deve ativar o ip pública nas instâncias lançadas na subnet.

    
    tags                    = merge(var.tags, 
                              tomap({
                                  "Name" = format("${var.name_subnet}-Priv-%s", element(keys(var.cidr_block_private), count.index))
                              }))
}