
# this file defines the virtual private cloud that will contain Ec2 instances, and the load balancer. 
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main"
  }
}
