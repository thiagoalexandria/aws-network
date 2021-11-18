#Criacao da RTB para subnet aplicacao privada 1a
module "route_table_subnet_aplicacao_privada_1a" {
  source = "./modules/RouteTable"

  route_table_ipv4 = {
    "0.0.0.0/0"     = { nat = module.nat_gateway_subnet_aplicacao_1a.nat_gateway_id }
  }


  rtb_name  = "Rtb-Subnet-Aplicacao-Privada-1a"
  vpc_id    = module.vpc_aplicacao.vpc_main_id[0]
  subnet_id = module.create_subnet_aplicacao.subnet_private_id[0]

  tags = {
    Terraform   = "True"
  }
}

#Criacao da RTB para subnet aplicacao privada 1c
module "route_table_subnet_aplicacao_privada_1c" {
  source = "./modules/RouteTable"

  route_table_ipv4 = {
    "0.0.0.0/0"     = { nat = module.nat_gateway_subnet_aplicacao_1c.nat_gateway_id }
  }

  rtb_name  = "Rtb-Subnet-Aplicacao-Privada-1c"
  vpc_id    = module.vpc_aplicacao.vpc_main_id[0]
  subnet_id = module.create_subnet_aplicacao.subnet_private_id[1]

  tags = {
    Terraform   = "True"
  }
}

#Criacao da RTB para subnet aplicacao publica 1a
module "route_table_subnet_aplicacao_publica_1a" {
  source = "./modules/RouteTable"

  route_table_ipv4 = {
    "0.0.0.0/0"     = { igw = module.igw_aplicacao.igw_id[0] }
  }

  rtb_name  = "Rtb-Subnet-Aplicacao-Publica"
  vpc_id    = module.vpc_aplicacao.vpc_main_id[0]
  subnet_id = module.create_subnet_aplicacao.subnet_public_id[0]

  tags = {
    Terraform   = "True"
  }
}

#Criacao da RTB para subnet aplicacao publica 1c
module "route_table_subnet_aplicacao_publica_1c" {
  source = "./modules/RouteTable"

  create_rtb              = false
  existent_route_table_id = module.route_table_subnet_aplicacao_publica_1a.rtb_id[0]
  subnet_id               = module.create_subnet_aplicacao.subnet_public_id[1]
}