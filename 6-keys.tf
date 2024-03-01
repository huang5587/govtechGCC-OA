
# This file generates the SSH keys that are used by the Ec2 instances to connect with AWS. 
resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Convert private key to OpenSSH format
resource "local_file" "ssh_private_key" {
  content  = tls_private_key.ssh_key.private_key_pem
  filename = "${path.module}/ssh_private_key.pem"
}

# Extract public key from private key
resource "tls_private_key" "ssh_public_key" {
  algorithm   = "RSA"
  rsa_bits    = 4096

  depends_on = [
    local_file.ssh_private_key
  ]
}

resource "aws_key_pair" "key_pair1" {
  key_name   = "myKey"
  public_key = tls_private_key.ssh_public_key.public_key_openssh
}
