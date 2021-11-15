#Criacao do NAT Gateway para AZ "us-east-1a" da vpc aplicacao
module "nat_gateway_subnet_aplicacao_1a" {
  source = "./modules/NatGateway"

  subnet_id   = module.create_pub_subnet_aplicacao.subnet_public_id[0]
  nat_gw_name = "NAT_Subnet_Aplicacao_Us-east-1a"

  tags = {
    Terraform = "True"
  }
}