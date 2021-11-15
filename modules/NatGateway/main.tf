#Criação do Elastic IP.
resource "aws_eip" "eip_nat_gateway" {
  vpc      = true

  tags     = merge(var.tags, 
            tomap({
              "Name" = "EIP-${var.nat_gw_name}"
            }))
  
}

#Criação do NAT Gateway.
resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.eip_nat_gateway.id                                      #Associar o Elastic IP ao NAT Gateway.
  subnet_id     = var.subnet_id                                                   #Variável para receber o input da Subnet ID para associar ao NAT Gateway.
  
  tags          = merge(var.tags, 
                  tomap({
                    "Name" = format("%s", var.nat_gw_name)
                  }))
  
}