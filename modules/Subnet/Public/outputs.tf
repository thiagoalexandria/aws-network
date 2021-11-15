
#Output para mostrar o id da subnets publicas que está sendo criada.
output "subnet_public_id" {
  value = aws_subnet.public_subnet[*].id
}

#Output para mostrar o cidr_block das subnets publicas que está sendo criada.
output "subnet_public_cidr_block" {
  value = aws_subnet.public_subnet[*].cidr_block
}