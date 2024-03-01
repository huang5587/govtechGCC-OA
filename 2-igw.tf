# this file contains the internet-gateway that is used by the route table and load balancer.
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "gw"
  }
}