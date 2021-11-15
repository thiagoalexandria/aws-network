**Internet Gateway**

Módulo para criar Internet Gateway (IGW) e associar a uma VPC.


**Requirements**

| Name | Version |
| ------ | ------ |
| terraform | ~> 1.0.0 |
| aws | ~> 3.0 | 


**Variáveis**

| Variável | Descrição |
| ------ | ------ |
| igw_vpc_id | Variável para receber o input do ID da Vpc. **Variável requerida!** |
| igw_name | Variável para receber o input referente ao nome do IGW. **Variável opcional!** |
| tags | Variável para receber o input das tags para o recurso. **Variável opcional!** |


**Outputs**

| Variável | Descrição |
| ------ | ------ |
| igw_id | Mostrar o id do IGW que está sendo criada. |


**Uso**

Exemplo de uso do módulo para criação do IGW associando a VPC.

```
module "igw_XXXXXXX" {
  source = "./../.."

  igw_name   = "XXXXXX"
  igw_vpc_id = "vpc-id-XXXXXXX"

  tags = {
  Squad       = "xxxxxx"
  Environment = "xxxxxx"
  Terraform   = "True"
  }
}
```
