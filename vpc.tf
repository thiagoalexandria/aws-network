# Criacao da VPC Aplicação
module "vpc_aplicacao" {
  source = "./modules/Vpc"

  name_vpc   = "Vpc-Aplicacao"
  cidr_block = "10.232.64.0/18"

  tags = var.tags
}

#Criacao do IGW para as subnets publica da vpc aplicacao 
module "igw_aplicacao" {
  source = "./modules/InternetGateway"

  igw_name   = "Igw-Vpc-Aplicacao"
  igw_vpc_id = module.vpc_aplicacao.vpc_main_id[0]

  tags = var.tags
}