# this file specifies the necessary subnets for load balancer + Ec2 instances.
resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-southeast-1a"
  map_public_ip_on_launch = true

    tags = {
    "Name" = "subnet1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.48.0/24"
  availability_zone = "ap-southeast-1b"
  map_public_ip_on_launch = true

    tags = {
    "Name" = "subnet2"
  }
}
