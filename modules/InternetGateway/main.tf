resource "aws_internet_gateway" "igw" {
    vpc_id  = var.igw_vpc_id                                            #Vpc ID que o Internet Gateway será associado.

   
    tags    =   merge(var.tags, 
                tomap({
                    "Name" = format("%s", var.igw_name)
                }))
}