# SSH keys for EC2 access
resource "tls_private_key" "tls" {
  algorithm = "RSA"
  rsa_bits  = var.rsa_bits
}

resource "aws_s3_bucket_object" "tls_key_bucket_object" {
  key     = var.key_name
  bucket  = var.key_storage_bucket
  content = tls_private_key.tls.private_key_pem

}
resource "aws_key_pair" "aws_key_pair" {
  key_name   = var.key_name
  public_key = tls_private_key.tls.public_key_openssh
}