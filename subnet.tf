# Criacao da subnet da vpc aplicacao
module "create_priv_subnet_aplicacao" {
  source = "./modules/Subnet/Private"

  name_subnet = "Sub-Aplicacao"
  vpc_id      = module.vpc_aplicacao.vpc_main_id[0]

  #Config da subnet privada
  cidr_block_private = {
    us-east-1a = "10.232.64.0/21"
  }

  tags = var.tags

}


module "create_pub_subnet_aplicacao" {
  source = "./modules/Subnet/Public"

  name_subnet = "Sub-Aplicacao"
  vpc_id      = module.vpc_aplicacao.vpc_main_id[0]

  #Config da subnet publica
  cidr_block_public = {
    us-east-1a = "10.232.72.0/21"
  }

  tags = var.tags

}

# Criacao da subnet da vpc db
module "create_subnet_db" {
  source = "./modules/Subnet/Private"

  name_subnet = "Sub-Db"
  vpc_id      = module.vpc_aplicacao.vpc_main_id[0]

  #Config da subnet privada
  cidr_block_private = {
    us-east-1a = "10.232.80.0/19"
  }

  tags = var.tags
}