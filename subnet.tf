resource "aws_subnet" "public_subnet" {
  count      = length(var.PUBLIC_SUBNET_CIDR)

  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.PUBLIC_SUBNET_CIDR, count.index)

  tags = {
    Name = "roboshop-${ENV}-public-subenet-${element(var.AZ,count.index)}"
  }
}





#cidr_block = element(var.PUBLIC_SUBNET_CIDR, count.index) this is called the function count peddlling paramenters..and the this picking from the terrafrom-vpc/env-dev/dev.tfvars