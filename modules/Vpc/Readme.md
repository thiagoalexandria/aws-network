**VPC Simples**

Módulo que permite criar VPC do tipo tenancy, com o DNS support e hostnames habilitado por padrão.

**Requirements**

| Name | Version |
| ------ | ------ |
| terraform | ~> 0.14 |
| aws | ~> 3.0 | 


**Variáveis**

| Variável | Descrição |
| ------ | ------ |
| name_vpc | Variável para receber o input referente ao nome da VPC. **Variável requerida!** |
| cidr_block | Variável para receber o input referente ao block do CIDR. **Variável requerida!** |
| inst_tenancy | Variável para saber se precisa de uma infra dedicada ou não, nesse modulo, o default é para ser compartilhada. **Variável opcional!** |
| dns_hostnames | Variável para saber se a VPC tem ou não suporte para nome de host DNS. Por default estar habilitado. **Variável opcional!** |
| dns_support | Variável para saber se a VPC tem ou não suporte a DNS. Por default estar habilitado. **Variável opcional!** |
| tags | Variável para receber o input das tags para o recurso. **Variável requerida!** |


**Outputs**

| Variável | Descrição |
| ------ | ------ |
| vpc_main_id | Mostrar o id da VPC que está sendo criada. |


**Uso**

Exemplo de uso do módulo para criação da vpc.

```
module "vpc_xxxxx" {
  source = "./../.."

  name_vpc   = "Nome da VPC"
  cidr_block = "x.x.x.x/x"

  tags = {
    Squad       = "xxxxx"
    Environment = "xxxxx"
    Terraform   = "True"
  }
}
```