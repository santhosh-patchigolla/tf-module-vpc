# Requester's side of the connection.
resource "aws_vpc_peering_connection" "peer" {
  peer_vpc_id   = aws_vpc.main.id
  vpc_id        = var.DEFAULT_VPC_ID 
  auto_accept   = true

  tags = {
    Side = "Robot-${var.ENV}-default-vpc-peering"
  }
}


