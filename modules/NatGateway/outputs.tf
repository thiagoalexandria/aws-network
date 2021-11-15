#Output para mostrar o ID do Elastic IP que está sendo criada.
output "elastic_ip_id" {
    value = aws_eip.eip_nat_gateway.id
}

#Output para mostrar o ID do NAT Gateway que está sendo criada.
output "nat_gateway_id" {
    value = aws_nat_gateway.nat_gw.id
}