#Criacao da RTB para subnet aplicacao publica 1a
module "route_table_subnet_aplicacao_publica_1a" {
  source = "./modules/RouteTable"

  route_table_ipv4 = {
    "0.0.0.0/0" = { igw = module.igw_aplicacao.igw_id[0] }
  }

  rtb_name  = "Rtb-Subnet-Aplicacao-Publica"
  vpc_id    = module.vpc_aplicacao.vpc_main_id[0]
  subnet_id = module.create_pub_subnet_aplicacao.subnet_public_id[0]

  tags = var.tags
}

#Criacao da RTB para subnet aplicacao privada 1a
module "route_table_subnet_aplicacao_privada_1a" {
  source = "./modules/RouteTable"

  route_table_ipv4 = {
    "0.0.0.0/0" = { nat = module.nat_gateway_subnet_aplicacao_1a.nat_gateway_id }
  }


  rtb_name  = "Rtb-Subnet-Aplicacao-Privada-1a"
  vpc_id    = module.vpc_aplicacao.vpc_main_id[0]
  subnet_id = module.create_priv_subnet_aplicacao.subnet_private_id[0]

  tags = var.tags
}

#Criacao da RTB para subnet db privada 1a
module "route_table_subnet_db_privada_1a" {
  source = "./modules/RouteTable"

  route_table_ipv4 = {
    "0.0.0.0/0" = { nat = module.nat_gateway_subnet_aplicacao_1a.nat_gateway_id }
  }

  rtb_name  = "Rtb-Subnet-Db-Privada-1a"
  vpc_id    = module.vpc_aplicacao.vpc_main_id[0]
  subnet_id = module.create_subnet_db.subnet_private_id[0]

  tags = var.tags
}