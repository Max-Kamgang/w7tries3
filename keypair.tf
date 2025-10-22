// Creation of Key Pair
resource "tls_private_key" "max_Key" {
  algorithm = var.key_algo
  rsa_bits  = var.key_bits
}
resource "aws_key_pair" "max_keypair" {
  key_name   = var.key_name
  public_key = var.public_key
}
// Save the private key to a file
resource "local_file" "private_key_pem" {
  content         = var.content
  filename        = var.key_name
  file_permission = var.file_permission
}

