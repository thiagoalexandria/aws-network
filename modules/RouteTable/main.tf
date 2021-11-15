#Criação da Route Table e associando a VPC.
resource "aws_route_table" "rtb" {
    count   = var.create_rtb ? 1 : 0
    vpc_id  = var.vpc_id                                                #Variável para saber o ID da VPC. 

   # Adicionando rotas
   dynamic "route" {
       for_each                         = var.route_table_ipv4
       content {
            cidr_block                  = route.key
            gateway_id                  = lookup(route.value, "igw", "" )
            instance_id                 = lookup(route.value, "instance", "" )
            nat_gateway_id              = lookup(route.value, "nat", "")
            vpc_endpoint_id             = lookup(route.value, "vpc_endpoint", "" )
            local_gateway_id            = lookup(route.value, "local_gateway", "" )
            transit_gateway_id          = lookup(route.value, "transit_gateway", "" )
            network_interface_id        = lookup(route.value, "network_interface", "" )
            vpc_peering_connection_id   = lookup(route.value, "vpc_peering", "" )
       }      
   }


    
    tags    =   merge(var.tags, 
                tomap({
                    "Name" = format("%s", var.rtb_name)
                }))
}

#Associando a rote table a subnet
resource "aws_route_table_association" "rtb_association" {
    count = var.associar_rtb_subnet ? 1 : 0

    subnet_id      = var.subnet_id
    route_table_id = var.create_rtb ? aws_route_table.rtb[0].id : var.existent_route_table_id
}