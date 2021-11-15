**Network ACL**

Módulo que permite criar Network ACL, associar a uma vpc, subnets. Permiti criar as regras de inbound e outbound de forma dinâmica.


**Requirements**

| Name | Version |
| ------ | ------ |
| terraform | ~> 0.14 |
| aws | ~> 3.0 | 


**Variáveis**

| Variável | Descrição |
| ------ | ------ |
| vpc_id | Variável para receber o input referente a Vpc ID que será associada a Network ACL. **Variável requerida!** |
| nacl_name | Variável para receber o input referente ao nome da Network ACL. **Variável opcional!** |
| subnet_ids | Variável para receber o input referente as Subnets IDs que será associada a Network ACL. **Variável opcional!** |
| nacl_rule_ingress | Variável para receber o input das regras referente ao tráfego de entrada. **Variável opcional!** |
| nacl_rule_egress | Variável para receber o input das regras referente ao tráfego de saída. **Variável opcional!** |
| tags | Variável para receber o input das tags para o recurso. **Variável opcional!** |


**Outputs**

| Variável | Descrição |
| ------ | ------ |
| nacl_id | ID da NACL que está sendo criada. |


**Uso**

Exemplo de uso do módulo para criação do Network ACL, associando a vpc e subnets, com regras exemplos de regras de entrada e saída.

```
module "XXXXXXX" {
  source = "./../../XXXXXXXX"

  nacl_name   = "NACL-XXXXXXXX"
  vpc_id      = "id-XXXXXXXX"
  subnet_ids  = ["id-XXXXXXXX", "id-XXXXXXXX"]

  nacl_rule_ingress = {
    100   = { protocolo = "tcp", from_port = 80, to_port = 80, cidr_block = "192.168.10.0/24", action = "allow" }
    150   = { protocolo = "tcp", from_port = 22, to_port = 22, cidr_block = "192.168.10.0/24", action = "allow" }
  }

  nacl_rule_egress = {
    100   = { protocolo = "-1", from_port = 0, to_port = 0, cidr_block = "0.0.0.0/0", action = "allow" }
  }

  tags = {
  Team        = "XXXXXXXX"
  Environment = "XXXXXXXX"
  Terraform   = "True"
  }
}
```