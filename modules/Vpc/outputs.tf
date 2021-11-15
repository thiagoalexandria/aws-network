#Output para mostrar o id da VPC que está sendo criada.
output "vpc_main_id" {
  value = aws_vpc.vpc_main[*].id
}