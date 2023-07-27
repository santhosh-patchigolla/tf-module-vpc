# using bewlow we creating the VPC peering and it will auto connect()auto accept as we doing it in the same account
resource "aws_vpc_peering_connection_accepter" "peer" {
  vpc_id                    = aws_vpc.main.id
  vpc_peering_connection_id =var.DEFAULT_VPC_ID
  auto_accept               = true

  tags = {
    Side = "Robot-${var.ENV}-default-vpc-peering"
  }
}