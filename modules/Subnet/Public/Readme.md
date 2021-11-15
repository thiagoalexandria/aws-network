**Subnet**

Módulo que permite criar Subnets Privadas e Públicas.


**Requirements**

| Name | Version |
| ------ | ------ |
| terraform | ~> 1.0.0 |
| aws | ~> 3.0 | 


**Variáveis**

| Variável | Descrição |
| ------ | ------ |
| name_subnet | Variável para receber o input referente ao nome da subnet. **Variável requerida!** |
| vpc_id | Variável para receber o input referente ao Vpc ID. **Variável requerida!** |
| cidr_block_private | Variável do tipo MAP para receber o input a Zona de disponibilidade (key) e bloco da subnet privada (value). **Variável opcional!** |
| cidr_block_public | Variável do tipo MAP para receber o input a Zona de disponibilidade (key) e bloco da subnet pública (value). **Variável opcional!** |
| map_public_ip_on_launch_private | Variável para saber se a subrede deve ativar o ip público nas instâncias lançadas na subnet. Para subrede privada, por default está desabilitado. **Variável opcional!** |
| map_public_ip_on_launch_public | Variável para saber se a subrede deve ativar o ip público nas instâncias lançadas na subnet. Para subrede pública, por default está habilitado. **Variável opcional!** |
| tags | Variável para receber o input das tags para o recurso. **Variável requerida!** |


**Outputs**

| Variável | Descrição |
| ------ | ------ |
| subnet_private_id | Mostrar o id da subnet privada que está sendo criada. |
| subnet_public_id | Mostrar o id da subnet pública que está sendo criada. |


**Uso**

Exemplo de uso do módulo para criação das subnets associando as availability zone.

```
module "create_subnet_xxxxx" {
  source = "./../.."

  name_subnet = "Nome da Subnet"
  vpc_id      = "vpc-id-xxxxx"
    
  #Config da subnet privada e associando a AZ
  cidr_block_private = {
  us-east-1a = "10.232.64.0/22"
  us-east-1c = "10.232.68.0/22"
  }

  #Config da subnet publica e associando a AZ
  cidr_block_public = {
  us-east-1a = "10.232.76.0/24"
  us-east-1c = "10.232.77.0/24"
  }

  tags = {
  Squad       = "xxxxx"
  Environment = "xxxxx"
  Terraform   = "True"
  }
}
```