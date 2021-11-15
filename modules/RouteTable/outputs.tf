#Output para mostrar o id da Route tables que está sendo criada.
output "rtb_id" {
    value = aws_route_table.rtb[*].id
    depends_on = [
      aws_route_table.rtb,
    ]
}