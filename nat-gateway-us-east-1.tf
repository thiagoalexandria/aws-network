#Criacao do NAT Gateway para AZ "us-east-1a" da vpc aplicacao
module "nat_gateway_subnet_aplicacao_1a" {
  source = "./modules/NatGateway"

  subnet_id   = module.create_subnet_aplicacao.subnet_public_id[0]
  nat_gw_name = "NAT_Subnet_Aplicacao_Us-east-1a"

  tags = var.tags
}

#Criacao do NAT Gateway para AZ "us-east-1c" da vpc aplicacao
module "nat_gateway_subnet_aplicacao_1c" {
  source = "./modules/NatGateway"

  subnet_id   = module.create_subnet_aplicacao.subnet_public_id[1]
  nat_gw_name = "NAT_Subnet_Aplicacao_Us-east-1c"

  tags = var.tags
}