**Route Table**

O módulo de route table permite realizar as seguintes implementações:

* Criar route table;
* Criar route table e associar a uma subnet;
* Associar uma route table existente a uma subnet.


**Requirements**

| Name | Version |
| ------ | ------ |
| terraform | ~> 1.0.0 |
| aws | ~> 3.0 | 


**Variáveis**

| Variável | Descrição |
| ------ | ------ |
| vpc_id | Variável para receber o input referente a Vpc ID que será associada a Route Table. **Variável requerida!** |
| rtb_name | Variável para receber o input referente ao nome da RouteTable. **Variável opcional!** |
| create_rtb | Questionamento para saber se deseja criar a route table. Por default, está habilitado (true) para criar. **Variável opcional!** |
| existent_route_table_id | Route table ID existente que será associada a subnet. **Variável requerida caso a variável "associar_rtb_subnet" seja true.** |
| associar_rtb_subnet | Questionamento para saber se deseja associar a route table criada a uma subnet. Por default, está habilitado (true) para associar. **Variável opcional!** |
| subnet_id | Subnet ID que será associada a route table. **Variável requerida caso a variável "associar_rtb_subnet" seja true.** |
| tags | Variável para receber o input das tags para o recurso. **Variável opcional!** |


**Outputs**

| Variável | Descrição |
| ------ | ------ |
| rtb_id | ID da Route Table que está sendo criada. |


**Uso**

Módulo para criar Route Table e associar a uma subnet.

```
module "route_table_XXXXXXXX" {
  source = "./../../XXXXXXXX"

  route_table_ipv4 = {
    "X.X.X.X/X"      = { igw = "ID" }               #(Optional) Identifier of a VPC internet gateway or a virtual private gateway.
    "X.X.X.X/X"      = { instance = "ID" }          #(Optional) Identifier of an EC2 instance.
    "X.X.X.X/X"      = { nat = "ID" }               #(Optional) Identifier of a VPC NAT gateway.
    "X.X.X.X/X"      = { vpc_endpoint = "ID" }      #(Optional) Identifier of a VPC Endpoint.
    "X.X.X.X/X"      = { local_gateway = "ID" }     #(Optional) Identifier of a Outpost local gateway.
    "X.X.X.X/X"      = { transit_gateway = "ID" }   #(Optional) Identifier of an EC2 Transit Gateway.
    "X.X.X.X/X"      = { network_interface = "ID" } #(Optional) Identifier of an EC2 network interface.
    "X.X.X.X/X"      = { vpc_peering = "ID" }       #(Optional) Identifier of a VPC peering connection.
  }

  rtb_name  = "Nome da Route Table"
  vpc_id    = "VPC ID da que será associada a Route table"
  subnet_id = "Subnet ID da que será associada a Route table"
}
```


Módulo para criar Route Table e NÃO associar a uma subnet.

```
module "route_table_XXXXXXXX" {
  source = "./../../XXXXXXXX"

  route_table_ipv4 = {
    "X.X.X.X/X"      = { igw = "ID" }               #(Optional) Identifier of a VPC internet gateway or a virtual private gateway.
    "X.X.X.X/X"      = { instance = "ID" }          #(Optional) Identifier of an EC2 instance.
    "X.X.X.X/X"      = { nat = "ID" }               #(Optional) Identifier of a VPC NAT gateway.
    "X.X.X.X/X"      = { vpc_endpoint = "ID" }      #(Optional) Identifier of a VPC Endpoint.
    "X.X.X.X/X"      = { local_gateway = "ID" }     #(Optional) Identifier of a Outpost local gateway.
    "X.X.X.X/X"      = { transit_gateway = "ID" }   #(Optional) Identifier of an EC2 Transit Gateway.
    "X.X.X.X/X"      = { network_interface = "ID" } #(Optional) Identifier of an EC2 network interface.
    "X.X.X.X/X"      = { vpc_peering = "ID" }       #(Optional) Identifier of a VPC peering connection.
  }

  rtb_name            = "Nome da Route Table"
  vpc_id              = "VPC ID da que será associada a Route table"
  associar_rtb_subnet = false
}
```


Módulo para NÃO criar Route Table, porém associar uma Route Table existente a uma subnet.

```
module "route_table_XXXXXXXX" {
  source = "./../../XXXXXXXX"

  create_rtb              = false
  existent_route_table_id = "ID da route table existente"
  subnet_id               = "Subnet ID da que será associada a Route table"
}
```

