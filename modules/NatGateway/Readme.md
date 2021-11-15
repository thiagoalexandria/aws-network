**NAT Gateway**

Módulo que permite criar NAT Gateway com o Elastic IP associado.


**Requirements**

| Name | Version |
| ------ | ------ |
| terraform | ~> 0.14 |
| aws | ~> 3.0 | 


**Variáveis**

| Variável | Descrição |
| ------ | ------ |
| subnet_id | Variável para receber o input referente a Subnet ID que será associada ao NAT Gateway. **Variável requerida!** |
| nat_gw_name | Variável para receber o input referente ao nome do NAT Gateway. **Variável opcional!** |
| tags | Variável para receber o input das tags para o recurso. **Variável opcional!** |


**Outputs**

| Variável | Descrição |
| ------ | ------ |
| elastic_ip_id | ID do Elastic IP que está sendo criada. |
| nat_gateway_id | ID do NAT Gateway que está sendo criada. |


**Uso**

Exemplo de uso do módulo para criação do NAT Gateway associando a subnet.

```
module "nat_gateway_xxxxxx" {
  source = "./../.."

  subnet_id   = "subnet-id-xxxxxx"
  nat_gw_name = "NAT_xxxxxx"

  tags = {
  Squad       = "xxxxxx"
  Environment = "xxxxxx"
  Terraform   = "True"
  }
}
```
