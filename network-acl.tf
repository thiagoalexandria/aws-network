#Criacao da NACL para subnet aplicacao publica
module "nacl_subnet_aplicacao_publica" {
  source = "./modules/NetworkAcl"

  nacl_name  = "NACL-Sub-Aplicacao-publica"
  vpc_id     = module.vpc_aplicacao.vpc_main_id[0]
  subnet_ids = [module.create_subnet_aplicacao.subnet_public_id[0], module.create_subnet_aplicacao.subnet_public_id[1]]

  nacl_rule_ingress = {
    50 = { protocolo = "-1", from_port = 0, to_port = 0, cidr_block = "0.0.0.0/0", action = "allow" }
  }

  nacl_rule_egress = {
    50 = { protocolo = "-1", from_port = 0, to_port = 0, cidr_block = "0.0.0.0/0", action = "allow" }
  }

  tags = var.tags
}

#Criacao da NACL para subnet aplicacao privada
module "nacl_subnet_aplicacao_privada" {
  source = "./modules/NetworkAcl"

  nacl_name  = "NACL-Sub-Aplicacao-private"
  vpc_id     = module.vpc_aplicacao.vpc_main_id[0]
  subnet_ids = [module.create_subnet_aplicacao.subnet_private_id[0], module.create_subnet_aplicacao.subnet_private_id[1]]

  nacl_rule_ingress = {
    50 = { protocolo = "-1", from_port = 0, to_port = 0, cidr_block = "0.0.0.0/0", action = "allow" }
  }

  nacl_rule_egress = {
    50 = { protocolo = "-1", from_port = 0, to_port = 0, cidr_block = "0.0.0.0/0", action = "allow" }
  }

  tags = var.tags
}