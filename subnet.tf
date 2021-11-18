# Criacao da subnet da vpc aplicacao
module "create_subnet_aplicacao" {
  source = "./modules/Subnet"

  name_subnet = "Sub-Aplicacao"
  vpc_id      = module.vpc_aplicacao.vpc_main_id[0]

  #Config da subnet privada
  cidr_block_private = {
    us-east-1a = "10.232.64.0/21"
    us-east-1c = "10.232.72.0/21"
  }

  #Config da subnet publica
  cidr_block_public = {
    us-east-1a = "10.232.80.0/21"
    us-east-1c = "10.232.88.0/21"
  }

  tags_priv = var.subnet_tags

  tags_pub = var.subnet_tags

}