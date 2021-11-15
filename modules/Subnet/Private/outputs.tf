#Output para mostrar o id da subnets privadas que está sendo criada.
output "subnet_private_id" {
  value = aws_subnet.private_subnet[*].id
}

#Output para mostrar o cidr_block das subnets privadas que está sendo criada.
output "subnet_private_cidr_block" {
  value = aws_subnet.private_subnet[*].cidr_block
}